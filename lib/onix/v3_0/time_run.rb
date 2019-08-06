# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class TimeRun < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :start_time, for_tag: 'StartTime', min_occurs: '1', max_occurs: '1'
      subnode_accessor :end_time, for_tag: 'EndTime', min_occurs: '0', max_occurs: '1'
    end
  end
end
