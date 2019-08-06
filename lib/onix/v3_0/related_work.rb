# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class RelatedWork < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :work_relation_code, for_tag: 'WorkRelationCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :work_identifiers, for_tag: 'WorkIdentifier', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
