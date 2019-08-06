# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Event < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :event_role, for_tag: 'EventRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :event_names, for_tag: 'EventName', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :event_acronyms, for_tag: 'EventAcronym', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :event_number, for_tag: 'EventNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :event_themes, for_tag: 'EventTheme', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :event_date, for_tag: 'EventDate', min_occurs: '0', max_occurs: '1'
      subnode_accessor :event_places, for_tag: 'EventPlace', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :event_sponsors, for_tag: 'EventSponsor', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :websites, for_tag: 'Website', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
