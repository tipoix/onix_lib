# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class CollectionSequence < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :collection_sequence_type, for_tag: 'CollectionSequenceType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :collection_sequence_type_name, for_tag: 'CollectionSequenceTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :collection_sequence_number, for_tag: 'CollectionSequenceNumber', min_occurs: '1', max_occurs: '1'
    end
  end
end
