# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SupplierIDType < Base
      onix_code_list :list92
      
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      text_content_accessor :str_value
    end
  end
end
