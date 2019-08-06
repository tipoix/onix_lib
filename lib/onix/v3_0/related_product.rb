# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class RelatedProduct < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_relation_codes, for_tag: 'ProductRelationCode', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :product_form, for_tag: 'ProductForm', min_occurs: '1', max_occurs: '1'
      subnode_accessor :product_form_details, for_tag: 'ProductFormDetail', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
