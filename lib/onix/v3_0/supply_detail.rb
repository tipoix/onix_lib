# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SupplyDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :supplier, for_tag: 'Supplier', min_occurs: '1', max_occurs: '1'
      subnode_accessor :supply_contacts, for_tag: 'SupplyContact', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :supplier_own_codings, for_tag: 'SupplierOwnCoding', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :returns_conditions, for_tag: 'ReturnsConditions', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_availability, for_tag: 'ProductAvailability', min_occurs: '1', max_occurs: '1'
      subnode_accessor :supply_dates, for_tag: 'SupplyDate', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :order_time, for_tag: 'OrderTime', min_occurs: '0', max_occurs: '1'
      subnode_accessor :new_supplier, for_tag: 'NewSupplier', min_occurs: '0', max_occurs: '1'
      subnode_accessor :stocks, for_tag: 'Stock', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :pack_quantity, for_tag: 'PackQuantity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :pallet_quantity, for_tag: 'PalletQuantity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :order_quantity_minimums, for_tag: 'OrderQuantityMinimum', min_occurs: '1', max_occurs: '2'
      subnode_accessor :order_quantity_multiple, for_tag: 'OrderQuantityMultiple', min_occurs: '0', max_occurs: '1'
      subnode_accessor :unpriced_item_type, for_tag: 'UnpricedItemType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :prices, for_tag: 'Price', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :reissue, for_tag: 'Reissue', min_occurs: '0', max_occurs: '1'
    end
  end
end
