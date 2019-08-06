# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Discount < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :discount_type, for_tag: 'DiscountType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :quantity, for_tag: 'Quantity', min_occurs: '1', max_occurs: '1'
      subnode_accessor :to_quantity, for_tag: 'ToQuantity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :discount_percent, for_tag: 'DiscountPercent', min_occurs: '1', max_occurs: '1'
      subnode_accessor :discount_amount, for_tag: 'DiscountAmount', min_occurs: '1', max_occurs: '1'
    end
  end
end
