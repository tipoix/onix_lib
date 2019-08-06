# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Product < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :record_reference, for_tag: 'RecordReference', min_occurs: '1', max_occurs: '1'
      subnode_accessor :notification_type, for_tag: 'NotificationType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :deletion_texts, for_tag: 'DeletionText', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :record_source_type, for_tag: 'RecordSourceType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :record_source_identifiers, for_tag: 'RecordSourceIdentifier', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :record_source_name, for_tag: 'RecordSourceName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_identifiers, for_tag: 'ProductIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :barcodes, for_tag: 'Barcode', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :descriptive_detail, for_tag: 'DescriptiveDetail', min_occurs: '0', max_occurs: '1'
      subnode_accessor :collateral_detail, for_tag: 'CollateralDetail', min_occurs: '0', max_occurs: '1'
      subnode_accessor :content_detail, for_tag: 'ContentDetail', min_occurs: '0', max_occurs: '1'
      subnode_accessor :publishing_detail, for_tag: 'PublishingDetail', min_occurs: '0', max_occurs: '1'
      subnode_accessor :related_material, for_tag: 'RelatedMaterial', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_supplies, for_tag: 'ProductSupply', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
