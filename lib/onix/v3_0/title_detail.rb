# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class TitleDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :title_type, for_tag: 'TitleType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :title_elements, for_tag: 'TitleElement', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :title_statement, for_tag: 'TitleStatement', min_occurs: '0', max_occurs: '1'
    end
  end
end
