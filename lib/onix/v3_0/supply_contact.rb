# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SupplyContact < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :supply_contact_role, for_tag: 'SupplyContactRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :supply_contact_identifiers, for_tag: 'SupplyContactIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :supply_contact_name, for_tag: 'SupplyContactName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :contact_name, for_tag: 'ContactName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :email_address, for_tag: 'EmailAddress', min_occurs: '0', max_occurs: '1'
    end
  end
end
