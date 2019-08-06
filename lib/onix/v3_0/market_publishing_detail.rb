# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class MarketPublishingDetail < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :publisher_representatives, for_tag: 'PublisherRepresentative', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :product_contacts, for_tag: 'ProductContact', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :market_publishing_status, for_tag: 'MarketPublishingStatus', min_occurs: '1', max_occurs: '1'
      subnode_accessor :market_publishing_status_notes, for_tag: 'MarketPublishingStatusNote', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :market_dates, for_tag: 'MarketDate', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :promotion_campaigns, for_tag: 'PromotionCampaign', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :promotion_contact, for_tag: 'PromotionContact', min_occurs: '0', max_occurs: '1'
      subnode_accessor :initial_print_runs, for_tag: 'InitialPrintRun', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :reprint_details, for_tag: 'ReprintDetail', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :copies_solds, for_tag: 'CopiesSold', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :book_club_adoptions, for_tag: 'BookClubAdoption', min_occurs: '0', max_occurs: 'unbounded'
    end
  end
end
