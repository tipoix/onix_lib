# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class PublishingDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :imprints, for_tag: 'Imprint', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :publishers, for_tag: 'Publisher', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :city_of_publications, for_tag: 'CityOfPublication', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :country_of_publication, for_tag: 'CountryOfPublication', min_occurs: '0', max_occurs: '1'
      subnode_accessor :product_contacts, for_tag: 'ProductContact', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :publishing_status, for_tag: 'PublishingStatus', min_occurs: '1', max_occurs: '1'
      subnode_accessor :publishing_status_notes, for_tag: 'PublishingStatusNote', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :publishing_dates, for_tag: 'PublishingDate', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :latest_reprint_number, for_tag: 'LatestReprintNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :copyright_statements, for_tag: 'CopyrightStatement', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :sales_rights, for_tag: 'SalesRights', min_occurs: '1', max_occurs: 'unbounded'
      subnode_accessor :row_sales_rights_type, for_tag: 'ROWSalesRightsType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :sales_restrictions, for_tag: 'SalesRestriction', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
