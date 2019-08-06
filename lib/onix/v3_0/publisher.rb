# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Publisher < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :publishing_role, for_tag: 'PublishingRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :publisher_identifiers, for_tag: 'PublisherIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :publisher_name, for_tag: 'PublisherName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :fundings, for_tag: 'Funding', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :websites, for_tag: 'Website', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
