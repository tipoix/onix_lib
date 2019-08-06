# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ContentDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :content_items, for_tag: 'ContentItem', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
