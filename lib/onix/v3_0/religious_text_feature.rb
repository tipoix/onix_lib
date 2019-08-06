# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ReligiousTextFeature < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :religious_text_feature_type, for_tag: 'ReligiousTextFeatureType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :religious_text_feature_code, for_tag: 'ReligiousTextFeatureCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :religious_text_feature_descriptions, for_tag: 'ReligiousTextFeatureDescription', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
