# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ContentItem < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :level_sequence_number, for_tag: 'LevelSequenceNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :text_item, for_tag: 'TextItem', min_occurs: '1', max_occurs: '1'
      subnode_accessor :av_item, for_tag: 'AVItem', min_occurs: '1', max_occurs: '1'
      subnode_accessor :component_type_name, for_tag: 'ComponentTypeName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :component_number, for_tag: 'ComponentNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :title_details, for_tag: 'TitleDetail', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :contributors, for_tag: 'Contributor', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :contributor_statements, for_tag: 'ContributorStatement', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :no_contributor, for_tag: 'NoContributor', min_occurs: '0', max_occurs: '1'
      subnode_accessor :languages, for_tag: 'Language', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :subjects, for_tag: 'Subject', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :name_as_subjects, for_tag: 'NameAsSubject', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :text_contents, for_tag: 'TextContent', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :cited_contents, for_tag: 'CitedContent', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :supporting_resources, for_tag: 'SupportingResource', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :related_works, for_tag: 'RelatedWork', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :related_products, for_tag: 'RelatedProduct', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
