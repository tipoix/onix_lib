# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class StockQuantityCoded < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :stock_quantity_code_type, for_tag: 'StockQuantityCodeType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :stock_quantity_code_type_name, for_tag: 'StockQuantityCodeTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :stock_quantity_code, for_tag: 'StockQuantityCode', min_occurs: '1', max_occurs: '1'
    end
  end
end
