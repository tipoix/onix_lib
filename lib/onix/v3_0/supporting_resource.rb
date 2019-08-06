# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SupportingResource < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :resource_content_type, for_tag: 'ResourceContentType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :content_audiences, for_tag: 'ContentAudience', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '0', max_occurs: '1'
      subnode_accessor :resource_mode, for_tag: 'ResourceMode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :resource_features, for_tag: 'ResourceFeature', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :resource_versions, for_tag: 'ResourceVersion', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
