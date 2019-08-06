# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Language < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :language_role, for_tag: 'LanguageRole', min_occurs: '1', max_occurs: '1'
      subnode_accessor :language_code, for_tag: 'LanguageCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :country_code, for_tag: 'CountryCode', min_occurs: '0', max_occurs: '1'
      subnode_accessor :script_code, for_tag: 'ScriptCode', min_occurs: '0', max_occurs: '1'
    end
  end
end
