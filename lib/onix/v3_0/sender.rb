# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Sender < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sender_identifiers, for_tag: 'SenderIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :sender_name, for_tag: 'SenderName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :contact_name, for_tag: 'ContactName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :email_address, for_tag: 'EmailAddress', min_occurs: '0', max_occurs: '1'
    end
  end
end
