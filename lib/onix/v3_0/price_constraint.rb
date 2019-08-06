# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PriceConstraint < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :price_constraint_type, for_tag: 'PriceConstraintType', min_occurs: '1', max_occurs: '1'
      subnode_accessor :price_constraint_status, for_tag: 'PriceConstraintStatus', min_occurs: '1', max_occurs: '1'
      subnode_accessor :price_constraint_limits, for_tag: 'PriceConstraintLimit', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
