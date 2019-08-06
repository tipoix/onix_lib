# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Contributor < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sequence_number, for_tag: 'SequenceNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :contributor_roles, for_tag: 'ContributorRole', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :from_languages, for_tag: 'FromLanguage', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :to_languages, for_tag: 'ToLanguage', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :name_type, for_tag: 'NameType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :name_identifiers, for_tag: 'NameIdentifier', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :person_name, for_tag: 'PersonName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :person_name_inverted, for_tag: 'PersonNameInverted', min_occurs: '1', max_occurs: '1'
      subnode_accessor :titles_before_names, for_tag: 'TitlesBeforeNames', min_occurs: '0', max_occurs: '1'
      subnode_accessor :names_before_key, for_tag: 'NamesBeforeKey', min_occurs: '0', max_occurs: '1'
      subnode_accessor :prefix_to_key, for_tag: 'PrefixToKey', min_occurs: '0', max_occurs: '1'
      subnode_accessor :key_names, for_tag: 'KeyNames', min_occurs: '1', max_occurs: '1'
      subnode_accessor :names_after_key, for_tag: 'NamesAfterKey', min_occurs: '0', max_occurs: '1'
      subnode_accessor :suffix_to_key, for_tag: 'SuffixToKey', min_occurs: '0', max_occurs: '1'
      subnode_accessor :letters_after_names, for_tag: 'LettersAfterNames', min_occurs: '0', max_occurs: '1'
      subnode_accessor :titles_after_names, for_tag: 'TitlesAfterNames', min_occurs: '0', max_occurs: '1'
      subnode_accessor :gender, for_tag: 'Gender', min_occurs: '0', max_occurs: '1'
      subnode_accessor :corporate_name, for_tag: 'CorporateName', min_occurs: '1', max_occurs: '1'
      subnode_accessor :corporate_name_inverted, for_tag: 'CorporateNameInverted', min_occurs: '1', max_occurs: '1'
      subnode_accessor :unnamed_persons, for_tag: 'UnnamedPersons', min_occurs: '1', max_occurs: '1'
      subnode_accessor :alternative_names, for_tag: 'AlternativeName', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :contributor_dates, for_tag: 'ContributorDate', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :professional_affiliations, for_tag: 'ProfessionalAffiliation', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :prizes, for_tag: 'Prize', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :biographical_notes, for_tag: 'BiographicalNote', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :websites, for_tag: 'Website', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :contributor_descriptions, for_tag: 'ContributorDescription', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :contributor_places, for_tag: 'ContributorPlace', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
