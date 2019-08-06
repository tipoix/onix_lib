# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Market < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '1', max_occurs: '1'
      subnode_accessor :sales_restrictions, for_tag: 'SalesRestriction', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
