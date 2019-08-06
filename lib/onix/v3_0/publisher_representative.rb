# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PublisherRepresentative < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :agent_role, for_tag: 'AgentRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :agent_identifiers, for_tag: 'AgentIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :agent_name, for_tag: 'AgentName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :telephone_numbers, for_tag: 'TelephoneNumber', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :fax_numbers, for_tag: 'FaxNumber', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :email_addresses, for_tag: 'EmailAddress', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :websites, for_tag: 'Website', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
