# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PriceCondition < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :price_condition_type, for_tag: 'PriceConditionType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :price_condition_quantities, for_tag: 'PriceConditionQuantity', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
