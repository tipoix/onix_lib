# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class RelatedMaterial < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :related_works, for_tag: 'RelatedWork', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :related_products, for_tag: 'RelatedProduct', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
