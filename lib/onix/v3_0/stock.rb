# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Stock < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :location_identifiers, for_tag: 'LocationIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :location_names, for_tag: 'LocationName', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :stock_quantity_codeds, for_tag: 'StockQuantityCoded', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :on_hand, for_tag: 'OnHand', min_occurs: '1', max_occurs: '1'
      subnode_accessor :proximity, for_tag: 'Proximity', min_occurs: '0', max_occurs: '1'
      subnode_accessor :reserved, for_tag: 'Reserved', min_occurs: '1', max_occurs: '1'
      subnode_accessor :on_order, for_tag: 'OnOrder', min_occurs: '1', max_occurs: '1'
      subnode_accessor :cbo, for_tag: 'CBO', min_occurs: '1', max_occurs: '1'
      subnode_accessor :on_order_details, for_tag: 'OnOrderDetail', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :velocities, for_tag: 'Velocity', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
