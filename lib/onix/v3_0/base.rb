module Onix
  module V3_0
    class Base

      @@lazy_parse = false
      cattr_accessor :lazy_parse

      def self.onix_code_list(code_list)
        self.from_code_list = code_list
      end

      def self.from_code_list?
        ! @from_code_list.nil?
      end

      def self.from_code_list
        @from_code_list
      end

      def self.from_code_list=(code_list)
        @from_code_list = code_list
      end

      def self.node_attribute_accessor(name, of_type: 'string')
        node_attributes[name] = of_type
      end

      def self.node_attributes
        @node_attributes ||= {}
        @node_attributes.merge! superclass.node_attributes if superclass.ancestors.include? Base
        @node_attributes
      end

      def self.text_content_accessor(name)
        self.text_content = name
      end

      def self.text_content?
        ! self.text_content.nil?
      end

      def self.text_content
        res = @text_content
        res ||= superclass.text_content if superclass.ancestors.include? Base
        res
      end

      def self.text_content=(new_name)
        @text_content = new_name
      end

      def self.subnode_accessor(name, for_tag: nil, min_occurs: '0', max_occurs: '1')
        if max_occurs == 'unbounded' || max_occurs.to_i > 1
          subnodesa[for_tag || name] = name
        else
          subnodes[for_tag || name] = name
        end
      end

      def self.subnodes
        @subnodes ||= {}
        @subnodes.merge! superclass.subnodes if superclass.ancestors.include? Base
        @subnodes
      end

      def self.subnodesa
        @subnodesa ||= {}
        @subnodesa.merge! superclass.subnodesa if superclass.ancestors.include? Base
        @subnodesa
      end

      def self.value?
        self.subnodes.size + self.subnodesa.size == 0
      end

      def self.to_dot(reader, full_dot: true, already_treated: [])
        if full_dot
          template_str = <<-ERB
digraph G {
  fontname = "Bitstream Vera Sans"
  fontsize = 8

  node [
    fontname = "Bitstream Vera Sans"
    fontsize = 8
    shape = "record"
  ]

  edge [
    fontname = "Bitstream Vera Sans"
    fontsize = 8
  ]

<%= self.to_dot reader, full_dot: false, already_treated: already_treated %>
}
          ERB
          template = ERB.new template_str, nil, '-'

          template.result(binding)
        else
          self_class_name = self.name.split('::').last
          return "" if already_treated.include?(self_class_name)
          already_treated << self_class_name
          subs_strs = []
          subs_links_strs = []
          attrs_dot_strs = []
          subs_attrs_strs = []
          self.subnodes.each do |node_class, node_attr|
            sub_class = reader.node_class(node_class)
            if sub_class.value?
              subs_attrs_strs << node_attr
            else
              subs_strs << sub_class.to_dot(reader, full_dot: false, already_treated: already_treated)
              subs_links_strs << node_class + " [arrowhead=none]"
              attrs_dot_strs << node_attr
            end
          end
          self.subnodesa.each do |node_class, node_attr|
            sub_class = reader.node_class(node_class)
            subs_strs << sub_class.to_dot(reader, full_dot: false, already_treated: already_treated)
            subs_links_strs << node_class + " [arrowhead=normal]"
            attrs_dot_strs << "#{node_attr}[]"
          end
          res = "  #{self_class_name} [\n"
          if attrs_dot_strs.size + subs_attrs_strs.size == 0
            res += "    label = \"#{self.name}\", shape = oval\n"
          else
            res += "    label = \"{#{self.name}\\l|#{subs_attrs_strs.join("\\l")}\\l|#{attrs_dot_strs.join("\\l")}\\l}\"\n"
          end
          res += "  ]\n\n"
          res += subs_links_strs.map {|sub| "  #{self_class_name} -> #{sub}"}.join("\n")
          res += "\n\n"
          res += subs_strs.join("\n")
          res
        end
      end

      def initialize
        if self.class.text_content?
          text_content_attr_name = self.class.text_content
          Logger.debug { ">>>>>>>>>>>> #{text_content_attr_name}" }
          class_eval do
            attr_accessor text_content_attr_name.to_sym
          end
        end

        if self.class.from_code_list?
          code_list = self.class.from_code_list
          text_content_attr_name = self.class.text_content
          class_eval do
            def for_humans
              CodeLists[self.class.from_code_list][send(self.class.text_content)]
            end
            def inspect
              "#<#{self.class.name} '#{send(self.class.text_content)}' (#{self.for_humans})>"
            end
          end
        end

        self.class.node_attributes.each do |attr_name, attr_type|
          Logger.debug { ">>>>>>>>>>>> #{attr_name}" }
          class_eval do
            attr_accessor attr_name.to_sym
            define_method attr_name.to_sym do
              case attr_type
              when 'string'
                instance_variable_get("@#{attr_name}")
              else
                instance_variable_get("@#{attr_name}")
              end
            end
          end
        end

        self.class.subnodes.each do |node_class, node_attr|
          Logger.debug { ">>>>>>>>>>>> #{node_attr}" }
          class_eval do
            attr_accessor "#{node_attr}_xml_node"

            define_method "#{node_attr}=" do |new_val|
              self.instance_variable_set "@#{node_attr}", new_val
              new_val
            end

            define_method node_attr do
              tmp_val = self.instance_variable_get "@#{node_attr}"
              return tmp_val unless tmp_val.nil?
              tmp_node = self.send "#{node_attr}_xml_node"
              if tmp_node
                mapped_node_name = @reader.map_tag tmp_node.name
                tmp_val = Base.from_xml_node(tmp_node, @reader)
                self.send "#{self.class.subnodes[mapped_node_name]}=", tmp_val
                return tmp_val
              else
                return nil
              end
            end
          end
        end

        self.class.subnodesa.each do |node_class, node_attr|
          Logger.debug { ">>>>>>>>>>>> #{node_attr}[]" }
          class_eval do
            attr_accessor "#{node_attr}_xml_nodes"

            define_method "#{node_attr}=" do |new_val|
              self.instance_variable_set "@#{node_attr}", new_val
              new_val
            end

            define_method node_attr do
              tmp_val = self.instance_variable_get "@#{node_attr}"
              return tmp_val unless tmp_val.nil?
              tmp_val = []              
              tmp_nodes = self.send "#{node_attr}_xml_nodes"
              tmp_nodes.each do |tmp_node|
                mapped_node_name = @reader.map_tag tmp_node.name
                tmp_tmp_val = Base.from_xml_node(tmp_node, @reader)
                tmp_val << tmp_tmp_val
              end
              self.instance_variable_set "@#{node_attr}", tmp_val
              return tmp_val
            end
          end
          # self.send "#{node_attr}=", []
          self.send "#{node_attr}_xml_nodes=", []
        end
      end

      def self.from_xml_node(xml_node, reader)
        node_class = reader.node_class(xml_node.name) || self
        Logger.debug { "#{xml_node.name} => #{node_class}" }
        raise "Unknown class for node #{xml_node.name}" if node_class.nil?
        res = node_class.new

        res.parse xml_node, reader

        res
      end

      def parse(xml_node, reader)
        @reader = reader
        @xml_node = xml_node
        Logger.info { "@@@ Parse #{xml_node.name} with #{self.class.name}" }

        xml_node.attributes.each do |attr_name, attr_node|
          if self.class.node_attributes.key?(attr_name.to_sym)
            self.send "#{attr_name}=", attr_node.value
          else
            Logger.warn { "Unknown attribute #{xml_node.ancestors.reverse.map(&:name).join('/')}/#{xml_node.name}@#{attr_name}" }
          end
        end

        if self.class.text_content?
          self.send "#{self.class.text_content}=", xml_node.text
        else
          xml_node.elements.each do |tmp_node|
            mapped_node_name = reader.map_tag tmp_node.name
            if tmp_node.text?
              Logger.debug { "Skip Text node" }
            elsif self.class.subnodes.key?(mapped_node_name)
              FoundNode.add mapped_node_name, tmp_node.ancestors.reverse.map(&:name).join('/')
              if @@lazy_parse
                self.send "#{self.class.subnodes[mapped_node_name]}_xml_node=", tmp_node
              else
                self.send "#{self.class.subnodes[mapped_node_name]}=", Base.from_xml_node(tmp_node, reader)
              end
            elsif self.class.subnodesa.key?(mapped_node_name)
              FoundNode.add mapped_node_name, tmp_node.ancestors.reverse.map(&:name).join('/')
              if @@lazy_parse
                self.send("#{self.class.subnodesa[mapped_node_name]}_xml_nodes").push tmp_node
              else
                self.send("#{self.class.subnodesa[mapped_node_name]}").push Base.from_xml_node(tmp_node, reader)
              end
            else
              MissingNode.add mapped_node_name, tmp_node.ancestors.reverse.map(&:name).join('/')
              Logger.warn { "Unknown node #{tmp_node.ancestors.reverse.map(&:name).join('/')}/#{mapped_node_name} at line #{ tmp_node.line }" }
              Base.from_xml_node(tmp_node, reader)
            end
          end
        end

        self
      end

      def consolidate
        Logger.info { "@@@ consolidate #{self}" }

        if self.class.text_content?
          # Transform value_str to better value
        else
          self.class.subnodes.each do |_, attr_name|
            obj = self.send "#{attr_name}"
            obj.consolidate unless obj.nil?
          end
          self.class.subnodesa.each do |_, attr_name|
            (self.send "#{attr_name}").each do |obj|
              obj.consolidate unless obj.nil?
            end
          end
        end
      end

      def intermediate_representation
        res = {}

        if self.class.text_content?
          # return self.respond_to?(:value) ? self.value : self.str_value
          # Alway retrun str_value to be sure it's not altered over next loadings
          res['__str_value__'] = self.str_value
        end
        self.class.node_attributes.each do |key, type|
          obj = self.send key
          res[key] = obj unless obj.nil?
        end
        self.class.subnodes.each do |_, attr_name|
          obj = self.send "#{attr_name}"
          res[attr_name] = obj.intermediate_representation unless obj.nil?
        end
        self.class.subnodesa.each do |_, attr_name|
          res[attr_name] = []
          (self.send "#{attr_name}").each do |obj|
            res[attr_name] << obj.intermediate_representation unless obj.nil?
          end
        end

        res
      end

      def from_intermediate_representation!(ir, reader)

        if self.class.text_content?
          self.str_value = ir['__str_value__']
        end

        self.class.node_attributes.each do |key, type|
          sub_ir = ir[key]
          next if sub_ir.nil?

          self.send "#{key}=", sub_ir
        end

        self.class.subnodes.each do |_, attr_name|
          sub_ir = ir[attr_name]
          next if sub_ir.nil?
          obj = reader.attr_class(attr_name).new
          obj.from_intermediate_representation! sub_ir, reader
          self.send "#{attr_name}=", obj
        end

        self.class.subnodesa.each do |_, attr_name|
          sub_irs = ir[attr_name]
          next if sub_irs.nil?

          sub_irs.each do |sub_ir|
            next if sub_ir.nil?
            obj = reader.attr_class(attr_name).new
            obj.from_intermediate_representation! sub_ir, reader
            (self.send "#{attr_name}").push obj
          end
        end

      end

      def ==(other)
        if other.is_a?(String) || other.is_a?(Symbol)
          return self.str_value == other
        end
        if self.class.text_content?
          return false unless self.str_value == other.str_value
        end
        self.class.node_attributes.each do |key, type|
          obj = self.send key
          other_obj = other.send key
          return false unless obj == other_obj
        end
        self.class.subnodes.each do |_, attr_name|
          obj = self.send "#{attr_name}"
          other_obj = self.send "#{attr_name}"
          return false unless obj == other_obj
        end
        self.class.subnodesa.each do |_, attr_name|
          obj = self.send "#{attr_name}"
          other_obj = self.send "#{attr_name}"
          return false if obj.nil? ^ other_obj.nil?
          return false if obj.size != other_obj.size
          obj.each_with_index do |o, i|
            return false unless o == other_obj[i]
          end
        end

        return true
      end

      def to_html
        res = []
    
        if self.class.text_content?
          if self.class.from_code_list?
            return ActionController::Base.helpers.content_tag('span', self.str_value, class: 'value') + ActionController::Base.helpers.content_tag('span', " (#{self.for_humans})")
          else
            return ActionController::Base.helpers.content_tag('span', self.str_value, class: 'value')
          end
        end
    
        self.class.node_attributes.each do |key, type|
          # obj = self.send key
          # res[key] = obj unless obj.nil?
        end
    
        self.class.subnodes.each do |_, attr_name|
          obj = self.send "#{attr_name}"
    
          res << ActionController::Base.helpers.content_tag('li') do
            ActionController::Base.helpers.content_tag('span', attr_name, class: 'key') + ActionController::Base.helpers.content_tag('span', ': ', class: 'sep') + obj.to_html
          end unless obj.nil?
        end
        self.class.subnodesa.each do |_, attr_name|
          objs = self.send "#{attr_name}"
    
          res << ActionController::Base.helpers.content_tag('li') do
            ActionController::Base.helpers.content_tag('span', attr_name, class: 'key') + ActionController::Base.helpers.content_tag('span', ': ', class: 'sep') +
            ActionController::Base.helpers.content_tag('ul', class: 'display-array') do
              objs.map do |obj|
                ActionController::Base.helpers.content_tag('li', obj.to_html)
              end.inject(&:+)
            end
          end unless objs.nil? || objs.size == 0
        end
    
        ActionController::Base.helpers.content_tag('ul') do
          res.inject(&:+)
        end
      end

    end
  end
end
