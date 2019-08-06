# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProductFormFeature < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_form_feature_type, for_tag: 'ProductFormFeatureType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :product_form_feature_value, for_tag: 'ProductFormFeatureValue', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_form_feature_descriptions, for_tag: 'ProductFormFeatureDescription', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
