# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SalesRight < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sales_rights_type, for_tag: 'SalesRightsType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '1', max_occurs: '1'
      subnode_accessor :sales_restrictions, for_tag: 'SalesRestriction', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :publisher_name, for_tag: 'PublisherName', min_occurs: '0', max_occurs: '1'
    end
  end
end
