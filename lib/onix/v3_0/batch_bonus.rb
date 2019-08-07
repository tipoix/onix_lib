# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class BatchBonus < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :batch_quantity, for_tag: 'BatchQuantity', min_occurs: '1', max_occurs: '1'
      subnode_accessor :free_quantity, for_tag: 'FreeQuantity', min_occurs: '1', max_occurs: '1'
    end
  end
end
