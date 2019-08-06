# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ProfessionalAffiliation < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :professional_positions, for_tag: 'ProfessionalPosition', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :affiliation, for_tag: 'Affiliation', min_occurs: '1', max_occurs: '1'
    end
  end
end
