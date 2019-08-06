require 'yaml'
require_relative './v3_0'

module Onix
  class Reader
    attr_reader :xml_doc

    def initialize(*args)
      @options = args.extract_options!

      @class_map = V3_0::ClassMap
      @class_map.deep_merge! @options[:class_map] if @options.key? :class_map

      @shortnames = V3_0::ShortNames

      @shortnames.each do |src, dst|
        unless @class_map.key?(dst.to_s)
          # Logger.error "Can't find shorttag '#{src}' target '#{dst}'"
        end
      end

      @attr_class_map = {}
      @class_map.each do |_, klass|
        base_name = klass.name.demodulize.underscore
        @attr_class_map[base_name.to_sym] = klass
        @attr_class_map[base_name.pluralize.to_sym] = klass
      end
    end

    def parse_file(file)
      Logger.log "Parse file #{file}"
      raise "File can't be nil" if file.nil?

      if file.is_a?(String)
        File.open file, 'r' do |f|
          @xml_doc = Nokogiri.XML f
        end
      else
        @xml_doc = Nokogiri.XML file
      end

      # puts @xml_doc

      create_nodes_tree
    end

    def node_class(node_name)
      @class_map[map_tag node_name]
    end

    def attr_class(attr_name)
      return @attr_class_map[attr_name.to_sym]
      # attr_classified = attr_name.to_s.classify
      # @class_map[attr_classified] ||= @class_map.select do |key, value|
      #   attr_classified == key.to_s.underscore.classify
      # end.values.first
    end

    def map_tag(tag_or_short_tag)
      @shortnames.key?(tag_or_short_tag) ? @shortnames[tag_or_short_tag] : tag_or_short_tag
    end

    private

    def create_nodes_tree
      onix_message_node = @xml_doc.css('ONIXMessage').first
      onix_message_node = @xml_doc.root
      @nodes_tree = V3_0::Base.from_xml_node onix_message_node, self unless onix_message_node.nil?

      @nodes_tree
    end
  end
end
