# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ConferenceSponsorIdentifier < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :conference_sponsor_id_type, for_tag: 'ConferenceSponsorIDType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :id_type_name, for_tag: 'IDTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :id_value, for_tag: 'IDValue', min_occurs: '1', max_occurs: '1'
    end
  end
end
