# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ReviewRating < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :rating, for_tag: 'Rating', min_occurs: '1', max_occurs: '1'
      subnode_accessor :rating_limit, for_tag: 'RatingLimit', min_occurs: '0', max_occurs: '1'
      subnode_accessor :rating_units, for_tag: 'RatingUnits', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
