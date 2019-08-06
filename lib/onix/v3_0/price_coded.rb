# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PriceCoded < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :price_code_type, for_tag: 'PriceCodeType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :price_code_type_name, for_tag: 'PriceCodeTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :price_code, for_tag: 'PriceCode', min_occurs: '1', max_occurs: '1'
    end
  end
end
