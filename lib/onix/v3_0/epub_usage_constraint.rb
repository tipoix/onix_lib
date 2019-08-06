# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class EpubUsageConstraint < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :epub_usage_type, for_tag: 'EpubUsageType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :epub_usage_status, for_tag: 'EpubUsageStatus', min_occurs: '1', max_occurs: '1'
      subnode_accessor :epub_usage_limits, for_tag: 'EpubUsageLimit', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
