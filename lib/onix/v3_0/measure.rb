# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Measure < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :measure_type, for_tag: 'MeasureType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :measurement, for_tag: 'Measurement', min_occurs: '1', max_occurs: '1'
      subnode_accessor :measure_unit_code, for_tag: 'MeasureUnitCode', min_occurs: '1', max_occurs: '1'
    end
  end
end
