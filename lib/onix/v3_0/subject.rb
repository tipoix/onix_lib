# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Subject < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :main_subject, for_tag: 'MainSubject', min_occurs: '0', max_occurs: '1'
      subnode_accessor :subject_scheme_identifier, for_tag: 'SubjectSchemeIdentifier', min_occurs: '1', max_occurs: '1'
      subnode_accessor :subject_scheme_name, for_tag: 'SubjectSchemeName', min_occurs: '0', max_occurs: '1'
      subnode_accessor :subject_scheme_version, for_tag: 'SubjectSchemeVersion', min_occurs: '0', max_occurs: '1'
      subnode_accessor :subject_code, for_tag: 'SubjectCode', min_occurs: '1', max_occurs: '1'
      subnode_accessor :subject_heading_texts, for_tag: 'SubjectHeadingText', min_occurs: '1', max_occurs: 'unbounded'
    end
  end
end
