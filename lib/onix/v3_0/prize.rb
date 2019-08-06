# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Prize < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :prize_names, for_tag: 'PrizeName', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :prize_year, for_tag: 'PrizeYear', min_occurs: '0', max_occurs: '1'
      subnode_accessor :prize_country, for_tag: 'PrizeCountry', min_occurs: '0', max_occurs: '1'
      subnode_accessor :prize_code, for_tag: 'PrizeCode', min_occurs: '0', max_occurs: '1'
      subnode_accessor :prize_statements, for_tag: 'PrizeStatement', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :prize_juries, for_tag: 'PrizeJury', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
