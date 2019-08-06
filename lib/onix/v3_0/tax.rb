# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Tax < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :price_part_descriptions, for_tag: 'PricePartDescription', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :tax_type, for_tag: 'TaxType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :tax_rate_code, for_tag: 'TaxRateCode', min_occurs: '0', max_occurs: '1'
      subnode_accessor :tax_rate_percent, for_tag: 'TaxRatePercent', min_occurs: '1', max_occurs: '1'
      subnode_accessor :taxable_amount, for_tag: 'TaxableAmount', min_occurs: '0', max_occurs: '1'
      subnode_accessor :tax_amount, for_tag: 'TaxAmount', min_occurs: '1', max_occurs: '1'
    end
  end
end
