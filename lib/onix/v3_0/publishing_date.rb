# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PublishingDate < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :publishing_date_role, for_tag: 'PublishingDateRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :date_format, for_tag: 'DateFormat', min_occurs: '0', max_occurs: '1'
      subnode_accessor :date, for_tag: 'Date', min_occurs: '1', max_occurs: '1'
    end
  end
end
