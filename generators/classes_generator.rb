require_relative './boot'
require 'erb'

@class_map = {}
@shorttags = {}

def add_node_map(tag, class_name, shorttag = nil)
  @class_map[tag] = class_name
  @shorttags[shorttag] = tag unless shorttag.nil?
end

def generate_global_definitions(code_lists_xsd_doc)
  out_dir = "lib/onix/"
  file_name = "v3_0.rb"

  code_lists = {}
  code_lists_xsd_doc.xpath("//xs:schema/xs:simpleType").each do |list_def_node|
    code_list = {
      name: list_def_node.attributes['name'].to_s,
      description: list_def_node.xpath("xs:annotation/xs:documentation").text.to_s,
      codes: {},
    }
    Onix::Logger.debug "Code List #{code_list[:name]}"

    list_def_node.xpath('xs:restriction/xs:enumeration').each do |elt|
      code_list[:codes][elt.attributes['value'].to_s] = {
        human_value: elt.xpath("xs:annotation/xs:documentation").first.text.to_s,
      }
      Onix::Logger.debug " -> #{elt.attributes['value'].to_s}"
    end

    code_lists[code_list[:name].underscore] = code_list
  end

  template_str = <<-ERB
# This file is generated
# Do not edit !!!

Dir.glob(File.expand_path('./v3_0/**/*.rb', __dir__)).each do |rbfile|
  require rbfile
end

module Onix
  module V3_0
    ClassMap = {
<% @class_map.each do |tag, klass| -%>
      '<%= tag %>' => <%= klass %>,
<% end if true -%>
    }

    ShortNames = {
<% @shorttags.each do |short, tag| -%>
      '<%= short %>' => '<%= tag %>',
<% end if true -%>
    }

    CodeLists = {
<% code_lists.each do |name, list| -%>
      <%= name %>: {
<% list[:codes].each do |code, params| -%>
        '<%= code %>' => <%= params[:human_value].inspect %>,
<% end -%>
      },
<% end if true -%>
    }
  end
end
  ERB
  template = ERB.new template_str, nil, '-'

  File.open File.expand_path(file_name, out_dir), 'w' do |f|
    f.write template.result(binding)
  end
end

def parse_extension_rec(node_def, full_def, code_lists_def, other_defs = [])
  res = {
    attributes: {},
    subnodes: {},
  }

  case node_def.name.to_s
  when 'simpleType'
    if node_def.attributes['name'].to_s =~ /^List[0-9]+$/
      res[:code_list] = node_def.attributes['name'].to_s
      Onix::Logger.debug "     => CodeList '#{res[:code_list]}'"
    else
    end
  end

  res
end

def parse_node_rec(node_def, full_def, code_lists_def, other_defs = [])
  res = {
    attributes: {},
    subnodes: {},
  }

  case node_def.name.to_s
  when 'text'
  when 'attribute'
    if node_def.attributes['name'].to_s != 'refname' && node_def.attributes['name'].to_s != 'shortname'
      puts "@@@@@@@@@@@@@@@@ attr #{node_def}"
      if node_def.attributes['type'].nil?
        Onix::Logger.warn "attribute '#{node_def.attributes['name']}' has no type, considering it as simple text"

        res[:attributes][node_def.attributes['name']] = {
          type: nil,
        }
      else
        attr_type = node_def.attributes['type'].to_s
        res[:attributes][node_def.attributes['name']] = {
          type: node_def.attributes['type'].to_s,
        }
      end
    end
  when 'attributeGroup'
    # puts "@@@@@@@@@@@@@@@@ attr group #{node_def}"
    if node_def.attributes['ref']
      group_def = full_def.xpath("//xs:attributeGroup[@name='#{node_def.attributes['ref']}']").first
      if group_def
        group_def.children.each do |children|
          res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
        end
      else
        Onix::Logger.error "Can't find xs:attributeGroup with name '#{node_def.attributes['ref']}'"
      end
    end
  when 'element'
    if node_def.attributes['ref']
      min_occurs = node_def.attributes['minOccurs'] || 1
      max_occurs = node_def.attributes['maxOccurs'] || 1
      accessor_name = node_def.attributes['ref'].to_s.underscore
      if max_occurs.to_s == 'unbounded' || max_occurs.to_s.to_i > 1
        accessor_name = accessor_name.pluralize
      end
  
      res[:subnodes][accessor_name] = {
        min_occurs: min_occurs,
        max_occurs: max_occurs,
        tag_name: node_def.attributes['ref'].to_s,
      }
    elsif node_def.attributes['name']
      node_def.children.each do |children|
        res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
      end
    end
  when 'complexType'
    if node_def.attributes['mixed'].to_s == "true"
      Onix::Logger.debug "   => mixed"
      node_def.children.each do |children|
        res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
      end
    else
      node_def.children.each do |children|
        res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
      end
    end
  when 'simpleType'
    Onix::Logger.debug "   => simpleType"
  when 'sequence'
    node_def.children.each do |children|
      res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
    end
  when 'choice'
    node_def.children.each do |children|
      res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
    end
  when 'group'
    if node_def.attributes['ref']
      group_def = full_def.xpath("//xs:group[@name='#{node_def.attributes['ref']}']").first
      if group_def
        group_def.children.each do |children|
          res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
        end
      else
        Onix::Logger.error "Can't find xs:group with name '#{node_def.attributes['ref']}'"
      end
    end
  when 'simpleContent'
    Onix::Logger.debug "   => simpleContent"
    node_def.children.each do |children|
      res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
    end
  when 'complexContent'
    Onix::Logger.debug "   => complexContent"
    node_def.children.each do |children|
      res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
    end
  when 'extension'
    Onix::Logger.debug "   => extension (#{node_def.attributes['base']})"
    # First load extension
    ext_name = node_def.attributes['base'].to_s
    tmp_def = nil
    ([full_def, code_lists_def] + other_defs).each do |xsd_defs|
      tmp_def ||= xsd_defs.xpath("//xs:complexType[@name='#{ext_name}']").first
      tmp_def ||= xsd_defs.xpath("//xs:simpleType[@name='#{ext_name}']").first
    end

    if tmp_def
      Onix::Logger.debug "     => found !"
      res.deep_merge! parse_extension_rec(tmp_def, full_def, code_lists_def, other_defs)
    else
      Onix::Logger.error "     => not found !"
    end

    node_def.children.each do |children|
      res.deep_merge! parse_node_rec(children, full_def, code_lists_def, other_defs)
    end
  else
    Onix::Logger.error "Unkown node type #{node_def.name.to_s}"
  end

  res
end

def generate_node_class(node_def, full_def, code_lists_def, other_defs)
  out_dir = "lib/onix/v3_0"

  file_name = node_def.attributes['name'].to_s.underscore
  base_class_name = "Base"
  class_name = node_def.attributes['name'].to_s
  shortname = node_def.xpath(".//xs:attribute[@name='shortname']//xs:enumeration/@value")

  add_node_map node_def.attributes['name'].to_s, class_name, shortname

  Onix::Logger.log "Generate node class #{ class_name }"

  parsed_node_def = parse_node_rec node_def, full_def, code_lists_def, other_defs

  template_str = <<-ERB
# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class <%= class_name %> < <%= base_class_name %>
<% if parsed_node_def[:code_list] -%>
      onix_code_list :<%= parsed_node_def[:code_list].underscore %>
      
<% end -%>
<% parsed_node_def[:attributes].each do |attribute_name, params| -%>
      node_attribute_accessor :<%= attribute_name %>, of_type: '<%= params[:type] || 'string' %>'
<% end -%>

<% if parsed_node_def[:subnodes].size > 0 -%>
<% parsed_node_def[:subnodes].each do |accessor_name, params| -%>
      subnode_accessor :<%= accessor_name %>, for_tag: '<%= params[:tag_name] %>', min_occurs: '<%= params[:min_occurs] %>', max_occurs: '<%= params[:max_occurs] %>'
<% end -%>
<% else -%>
      text_content_accessor :str_value
<% end -%>
    end
  end
end
  ERB
  template = ERB.new template_str, nil, '-'

  File.open File.expand_path("#{file_name}.rb", out_dir), 'w' do |f|
    f.write template.result(binding)
  end
end

def run
  xsd_doc = nil
  File.open 'specs/ONIX_BookProduct_3.0_reference.xsd', 'r' do |f|
    xsd_doc = Nokogiri.XML f
  end

  code_lists_xsd_doc = nil
  File.open 'specs/ONIX_BookProduct_CodeLists.xsd', 'r' do |f|
    code_lists_xsd_doc = Nokogiri.XML f
  end

  other_defs = []
  File.open 'specs/ONIX_XHTML_Subset.xsd', 'r' do |f|
    other_defs << Nokogiri.XML(f)
  end

  xsd_doc.root.xpath("//xs:element[@name]").each do |elt|
  # xsd_doc.root.xpath("//xs:element[@name='ONIXMessage']").each do |elt|
  # xsd_doc.root.xpath("//xs:element[@name='DescriptiveDetail']").each do |elt|
      # puts elt
    generate_node_class elt, xsd_doc, code_lists_xsd_doc, other_defs
  end

  puts xsd_doc.root.xpath('//xs:element[@name]').count

  puts code_lists_xsd_doc.root.xpath('//xs:simpleType[@name="List5"]').count

  generate_global_definitions code_lists_xsd_doc
end

Onix::Logger.log_level = Onix::Logger::LOG
run
