# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SupplierOwnCoding < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :supplier_code_type, for_tag: 'SupplierCodeType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :supplier_code_type_name, for_tag: 'SupplierCodeTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :supplier_code_value, for_tag: 'SupplierCodeValue', min_occurs: '1', max_occurs: '1'
    end
  end
end
