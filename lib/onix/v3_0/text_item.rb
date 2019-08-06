# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class TextItem < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :text_item_type, for_tag: 'TextItemType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :text_item_identifiers, for_tag: 'TextItemIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :page_runs, for_tag: 'PageRun', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :number_of_pages, for_tag: 'NumberOfPages', min_occurs: '0', max_occurs: '1'
    end
  end
end
