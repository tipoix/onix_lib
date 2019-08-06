# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ReturnsCondition < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :returns_code_type, for_tag: 'ReturnsCodeType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :returns_code_type_name, for_tag: 'ReturnsCodeTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :returns_code, for_tag: 'ReturnsCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :returns_notes, for_tag: 'ReturnsNote', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
