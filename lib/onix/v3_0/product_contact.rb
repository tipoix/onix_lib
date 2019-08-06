# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProductContact < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_contact_role, for_tag: 'ProductContactRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :product_contact_identifiers, for_tag: 'ProductContactIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :product_contact_name, for_tag: 'ProductContactName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :contact_name, for_tag: 'ContactName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :email_address, for_tag: 'EmailAddress', min_occurs: '0', max_occurs: '1'
    end
  end
end
