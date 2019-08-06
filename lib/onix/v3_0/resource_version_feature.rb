# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ResourceVersionFeature < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :resource_version_feature_type, for_tag: 'ResourceVersionFeatureType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :feature_value, for_tag: 'FeatureValue', min_occurs: '0', max_occurs: '1'
      subnode_accessor :feature_notes, for_tag: 'FeatureNote', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
