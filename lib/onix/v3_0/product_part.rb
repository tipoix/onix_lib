# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProductPart < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :primary_part, for_tag: 'PrimaryPart', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_form, for_tag: 'ProductForm', min_occurs: '1', max_occurs: '1'
      subnode_accessor :product_form_details, for_tag: 'ProductFormDetail', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_form_features, for_tag: 'ProductFormFeature', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_packaging, for_tag: 'ProductPackaging', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_form_descriptions, for_tag: 'ProductFormDescription', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_content_types, for_tag: 'ProductContentType', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :number_of_items_of_this_form, for_tag: 'NumberOfItemsOfThisForm', min_occurs: '1', max_occurs: '1'
      subnode_accessor :number_of_copies, for_tag: 'NumberOfCopies', min_occurs: '1', max_occurs: '1'
      subnode_accessor :country_of_manufacture, for_tag: 'CountryOfManufacture', min_occurs: '0', max_occurs: '1'
    end
  end
end
