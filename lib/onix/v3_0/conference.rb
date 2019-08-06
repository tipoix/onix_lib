# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Conference < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :conference_role, for_tag: 'ConferenceRole', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_name, for_tag: 'ConferenceName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :conference_acronym, for_tag: 'ConferenceAcronym', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_number, for_tag: 'ConferenceNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_theme, for_tag: 'ConferenceTheme', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_date, for_tag: 'ConferenceDate', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_place, for_tag: 'ConferencePlace', min_occurs: '0', max_occurs: '1'
      subnode_accessor :conference_sponsors, for_tag: 'ConferenceSponsor', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :websites, for_tag: 'Website', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
