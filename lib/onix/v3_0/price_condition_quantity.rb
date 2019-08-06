# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PriceConditionQuantity < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :price_condition_quantity_type, for_tag: 'PriceConditionQuantityType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :quantity, for_tag: 'Quantity', min_occurs: '1', max_occurs: '1'
      subnode_accessor :quantity_unit, for_tag: 'QuantityUnit', min_occurs: '1', max_occurs: '1'
    end
  end
end
