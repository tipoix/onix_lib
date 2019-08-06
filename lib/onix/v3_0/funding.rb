# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Funding < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :funding_identifiers, for_tag: 'FundingIdentifier', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
