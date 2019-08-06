# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Collection < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :collection_type, for_tag: 'CollectionType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :source_name, for_tag: 'SourceName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :collection_identifiers, for_tag: 'CollectionIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :collection_sequences, for_tag: 'CollectionSequence', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :title_details, for_tag: 'TitleDetail', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :contributors, for_tag: 'Contributor', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :contributor_statements, for_tag: 'ContributorStatement', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :no_contributor, for_tag: 'NoContributor', min_occurs: '0', max_occurs: '1'
    end
  end
end
