# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Reissue < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :reissue_date, for_tag: 'ReissueDate', min_occurs: '1', max_occurs: '1'
      subnode_accessor :reissue_description, for_tag: 'ReissueDescription', min_occurs: '0', max_occurs: '1'
      subnode_accessor :prices, for_tag: 'Price', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :supporting_resources, for_tag: 'SupportingResource', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
