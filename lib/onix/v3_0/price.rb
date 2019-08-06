# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Price < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :price_identifiers, for_tag: 'PriceIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_type, for_tag: 'PriceType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_qualifier, for_tag: 'PriceQualifier', min_occurs: '0', max_occurs: '1'
      subnode_accessor :epub_technical_protections, for_tag: 'EpubTechnicalProtection', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_constraints, for_tag: 'PriceConstraint', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :epub_license, for_tag: 'EpubLicense', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_type_descriptions, for_tag: 'PriceTypeDescription', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_per, for_tag: 'PricePer', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_conditions, for_tag: 'PriceCondition', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :minimum_order_quantity, for_tag: 'MinimumOrderQuantity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :batch_bonus, for_tag: 'BatchBonus', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :discount_codeds, for_tag: 'DiscountCoded', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :discounts, for_tag: 'Discount', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_status, for_tag: 'PriceStatus', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_amount, for_tag: 'PriceAmount', min_occurs: '1', max_occurs: '1'
      subnode_accessor :price_coded, for_tag: 'PriceCoded', min_occurs: '1', max_occurs: '1'
      subnode_accessor :taxes, for_tag: 'Tax', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :tax_exempt, for_tag: 'TaxExempt', min_occurs: '1', max_occurs: '1'
      subnode_accessor :unpriced_item_type, for_tag: 'UnpricedItemType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :currency_code, for_tag: 'CurrencyCode', min_occurs: '0', max_occurs: '1'
      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '0', max_occurs: '1'
      subnode_accessor :currency_zone, for_tag: 'CurrencyZone', min_occurs: '0', max_occurs: '1'
      subnode_accessor :comparison_product_prices, for_tag: 'ComparisonProductPrice', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_dates, for_tag: 'PriceDate', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :printed_on_product, for_tag: 'PrintedOnProduct', min_occurs: '1', max_occurs: '1'
      subnode_accessor :position_on_product, for_tag: 'PositionOnProduct', min_occurs: '0', max_occurs: '1'
    end
  end
end
