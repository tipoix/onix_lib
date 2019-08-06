# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProductClassification < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :product_classification_type, for_tag: 'ProductClassificationType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :product_classification_code, for_tag: 'ProductClassificationCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :percent, for_tag: 'Percent', min_occurs: '0', max_occurs: '1'
    end
  end
end
