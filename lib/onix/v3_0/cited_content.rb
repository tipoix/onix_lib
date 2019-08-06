# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class CitedContent < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :cited_content_type, for_tag: 'CitedContentType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :content_audiences, for_tag: 'ContentAudience', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '0', max_occurs: '1'
      subnode_accessor :source_type, for_tag: 'SourceType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :review_rating, for_tag: 'ReviewRating', min_occurs: '1', max_occurs: '1'
      subnode_accessor :source_titles, for_tag: 'SourceTitle', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :list_names, for_tag: 'ListName', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :position_on_list, for_tag: 'PositionOnList', min_occurs: '0', max_occurs: '1'
      subnode_accessor :citation_notes, for_tag: 'CitationNote', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :resource_links, for_tag: 'ResourceLink', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :content_dates, for_tag: 'ContentDate', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
