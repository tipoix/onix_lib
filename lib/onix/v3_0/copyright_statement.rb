# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class CopyrightStatement < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :copyright_type, for_tag: 'CopyrightType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :copyright_years, for_tag: 'CopyrightYear', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :copyright_owners, for_tag: 'CopyrightOwner', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
