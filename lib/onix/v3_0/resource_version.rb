# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class ResourceVersion < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :resource_form, for_tag: 'ResourceForm', min_occurs: '1', max_occurs: '1'
      subnode_accessor :resource_version_features, for_tag: 'ResourceVersionFeature', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :resource_links, for_tag: 'ResourceLink', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :content_dates, for_tag: 'ContentDate', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
