# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Website < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :website_role, for_tag: 'WebsiteRole', min_occurs: '0', max_occurs: '1'
      subnode_accessor :website_descriptions, for_tag: 'WebsiteDescription', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :website_link, for_tag: 'WebsiteLink', min_occurs: '1', max_occurs: '1'
    end
  end
end
