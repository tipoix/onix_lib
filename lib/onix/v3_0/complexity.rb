# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Complexity < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :complexity_scheme_identifier, for_tag: 'ComplexitySchemeIdentifier', min_occurs: '1', max_occurs: '1'
      subnode_accessor :complexity_code, for_tag: 'ComplexityCode', min_occurs: '1', max_occurs: '1'
    end
  end
end
