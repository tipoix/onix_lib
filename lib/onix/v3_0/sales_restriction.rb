# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class SalesRestriction < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sales_restriction_type, for_tag: 'SalesRestrictionType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :sales_outlets, for_tag: 'SalesOutlet', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :sales_restriction_notes, for_tag: 'SalesRestrictionNote', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :start_date, for_tag: 'StartDate', min_occurs: '0', max_occurs: '1'
      subnode_accessor :end_date, for_tag: 'EndDate', min_occurs: '0', max_occurs: '1'
    end
  end
end
