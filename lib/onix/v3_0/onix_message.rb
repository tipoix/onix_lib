# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ONIXMessage < Base
      # Add default XML namespace attribute
      node_attribute_accessor :xmlns, of_type: 'string', default: 'http://ns.editeur.org/onix/3.0/reference'

      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'
      node_attribute_accessor :release, of_type: 'string', default: '3.0'

      subnode_accessor :header, for_tag: 'Header', min_occurs: '1', max_occurs: '1'
      subnode_accessor :no_product, for_tag: 'NoProduct', min_occurs: '1', max_occurs: '1'
      subnode_accessor :products, for_tag: 'Product', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
