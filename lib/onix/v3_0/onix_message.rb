# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ONIXMessage < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'
      node_attribute_accessor :release, of_type: 'string'

      subnode_accessor :header, for_tag: 'Header', min_occurs: '1', max_occurs: '1'
      subnode_accessor :no_product, for_tag: 'NoProduct', min_occurs: '1', max_occurs: '1'
      subnode_accessor :products, for_tag: 'Product', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
