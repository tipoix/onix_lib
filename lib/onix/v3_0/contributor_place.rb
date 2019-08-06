# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ContributorPlace < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :contributor_place_relator, for_tag: 'ContributorPlaceRelator', min_occurs: '1', max_occurs: '1'
      subnode_accessor :country_code, for_tag: 'CountryCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :region_code, for_tag: 'RegionCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :location_names, for_tag: 'LocationName', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
