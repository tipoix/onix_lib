# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class AncillaryContent < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :ancillary_content_type, for_tag: 'AncillaryContentType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :ancillary_content_descriptions, for_tag: 'AncillaryContentDescription', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :number, for_tag: 'Number', min_occurs: '0', max_occurs: '1'
    end
  end
end
