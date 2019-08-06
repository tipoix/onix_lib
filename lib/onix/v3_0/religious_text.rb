# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ReligiousText < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :bible, for_tag: 'Bible', min_occurs: '1', max_occurs: '1'
      subnode_accessor :religious_text_identifier, for_tag: 'ReligiousTextIdentifier', min_occurs: '1', max_occurs: '1'
      subnode_accessor :religious_text_features, for_tag: 'ReligiousTextFeature', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
