# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class TextContent < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :text_type, for_tag: 'TextType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :content_audiences, for_tag: 'ContentAudience', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :territory, for_tag: 'Territory', min_occurs: '0', max_occurs: '1'
      subnode_accessor :texts, for_tag: 'Text', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :review_rating, for_tag: 'ReviewRating', min_occurs: '0', max_occurs: '1'
      subnode_accessor :text_authors, for_tag: 'TextAuthor', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :text_source_corporate, for_tag: 'TextSourceCorporate', min_occurs: '0', max_occurs: '1'
      subnode_accessor :source_titles, for_tag: 'SourceTitle', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :content_dates, for_tag: 'ContentDate', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
