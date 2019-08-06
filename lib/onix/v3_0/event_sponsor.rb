# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class EventSponsor < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :event_sponsor_identifiers, for_tag: 'EventSponsorIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :person_name, for_tag: 'PersonName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :corporate_name, for_tag: 'CorporateName', min_occurs: '1', max_occurs: '1'
    end
  end
end
