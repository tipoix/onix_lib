# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProductSupply < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :markets, for_tag: 'Market', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :market_publishing_detail, for_tag: 'MarketPublishingDetail', min_occurs: '0', max_occurs: '1'
      subnode_accessor :supply_details, for_tag: 'SupplyDetail', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
