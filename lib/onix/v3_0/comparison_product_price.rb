# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ComparisonProductPrice < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :price_type, for_tag: 'PriceType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_amount, for_tag: 'PriceAmount', min_occurs: '1', max_occurs: '1'
      subnode_accessor :currency_code, for_tag: 'CurrencyCode', min_occurs: '0', max_occurs: '1'
    end
  end
end
