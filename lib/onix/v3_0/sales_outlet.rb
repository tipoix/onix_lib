# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SalesOutlet < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sales_outlet_identifiers, for_tag: 'SalesOutletIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :sales_outlet_name, for_tag: 'SalesOutletName', min_occurs: '1', max_occurs: '1'
    end
  end
end
