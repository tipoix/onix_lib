# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Audience < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :audience_code_type, for_tag: 'AudienceCodeType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :audience_code_type_name, for_tag: 'AudienceCodeTypeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :audience_code_value, for_tag: 'AudienceCodeValue', min_occurs: '1', max_occurs: '1'
    end
  end
end
