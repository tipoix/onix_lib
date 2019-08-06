# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class CollateralDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :text_contents, for_tag: 'TextContent', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :cited_contents, for_tag: 'CitedContent', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :supporting_resources, for_tag: 'SupportingResource', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :prizes, for_tag: 'Prize', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
