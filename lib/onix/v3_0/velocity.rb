# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Velocity < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :velocity_metric, for_tag: 'VelocityMetric', min_occurs: '1', max_occurs: '1'
      subnode_accessor :rate, for_tag: 'Rate', min_occurs: '1', max_occurs: '1'
      subnode_accessor :proximity, for_tag: 'Proximity', min_occurs: '0', max_occurs: '1'
    end
  end
end
