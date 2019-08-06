# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class OnOrderDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :on_order, for_tag: 'OnOrder', min_occurs: '1', max_occurs: '1'
      subnode_accessor :proximity, for_tag: 'Proximity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :expected_date, for_tag: 'ExpectedDate', min_occurs: '1', max_occurs: '1'
    end
  end
end
