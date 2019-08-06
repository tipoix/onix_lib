# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class EpubLicenseExpression < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :epub_license_expression_type, for_tag: 'EpubLicenseExpressionType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :epub_license_expression_type_name, for_tag: 'EpubLicenseExpressionTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :epub_license_expression_link, for_tag: 'EpubLicenseExpressionLink', min_occurs: '1', max_occurs: '1'
    end
  end
end
