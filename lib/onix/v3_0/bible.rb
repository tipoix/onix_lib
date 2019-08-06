# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Bible < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :bible_contents, for_tag: 'BibleContents', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :bible_versions, for_tag: 'BibleVersion', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :study_bible_type, for_tag: 'StudyBibleType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :bible_purposes, for_tag: 'BiblePurpose', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :bible_text_organization, for_tag: 'BibleTextOrganization', min_occurs: '0', max_occurs: '1'
      subnode_accessor :bible_reference_location, for_tag: 'BibleReferenceLocation', min_occurs: '0', max_occurs: '1'
      subnode_accessor :bible_text_features, for_tag: 'BibleTextFeature', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
