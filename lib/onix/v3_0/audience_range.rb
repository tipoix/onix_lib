# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class AudienceRange < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :audience_range_qualifier, for_tag: 'AudienceRangeQualifier', min_occurs: '1', max_occurs: '1'
      subnode_accessor :audience_range_precision, for_tag: 'AudienceRangePrecision', min_occurs: '1', max_occurs: '1'
      subnode_accessor :audience_range_value, for_tag: 'AudienceRangeValue', min_occurs: '1', max_occurs: '1'
    end
  end
end
