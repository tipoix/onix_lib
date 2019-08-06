# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class FeatureNote < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'
      node_attribute_accessor :language, of_type: 'List74'
      node_attribute_accessor :textformat, of_type: 'TextFormatCode'

      text_content_accessor :str_value
    end
  end
end
