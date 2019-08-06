# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Territory < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :countries_included, for_tag: 'CountriesIncluded', min_occurs: '1', max_occurs: '1'
      subnode_accessor :regions_included, for_tag: 'RegionsIncluded', min_occurs: '1', max_occurs: '1'
      subnode_accessor :regions_excluded, for_tag: 'RegionsExcluded', min_occurs: '0', max_occurs: '1'
      subnode_accessor :countries_excluded, for_tag: 'CountriesExcluded', min_occurs: '0', max_occurs: '1'
    end
  end
end
