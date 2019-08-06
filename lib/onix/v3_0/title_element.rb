# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class TitleElement < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sequence_number, for_tag: 'SequenceNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :title_element_level, for_tag: 'TitleElementLevel', min_occurs: '1', max_occurs: '1'
      subnode_accessor :part_number, for_tag: 'PartNumber', min_occurs: '1', max_occurs: '1'
      subnode_accessor :year_of_annual, for_tag: 'YearOfAnnual', min_occurs: '1', max_occurs: '1'
      subnode_accessor :title_prefix, for_tag: 'TitlePrefix', min_occurs: '1', max_occurs: '1'
      subnode_accessor :no_prefix, for_tag: 'NoPrefix', min_occurs: '1', max_occurs: '1'
      subnode_accessor :title_without_prefix, for_tag: 'TitleWithoutPrefix', min_occurs: '1', max_occurs: '1'
      subnode_accessor :title_text, for_tag: 'TitleText', min_occurs: '1', max_occurs: '1'
      subnode_accessor :subtitle, for_tag: 'Subtitle', min_occurs: '0', max_occurs: '1'
    end
  end
end
