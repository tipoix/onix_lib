# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class AVItem < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :av_item_type, for_tag: 'AVItemType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :av_item_identifiers, for_tag: 'AVItemIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :time_runs, for_tag: 'TimeRun', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :av_duration, for_tag: 'AVDuration', min_occurs: '0', max_occurs: '1'
    end
  end
end
