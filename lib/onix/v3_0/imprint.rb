# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Imprint < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :imprint_identifiers, for_tag: 'ImprintIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :imprint_name, for_tag: 'ImprintName', min_occurs: '1', max_occurs: '1'
    end
  end
end
