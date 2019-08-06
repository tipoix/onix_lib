# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Extent < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :extent_type, for_tag: 'ExtentType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :extent_value, for_tag: 'ExtentValue', min_occurs: '1', max_occurs: '1'
      subnode_accessor :extent_value_roman, for_tag: 'ExtentValueRoman', min_occurs: '1', max_occurs: '1'
      subnode_accessor :extent_unit, for_tag: 'ExtentUnit', min_occurs: '1', max_occurs: '1'
    end
  end
end
