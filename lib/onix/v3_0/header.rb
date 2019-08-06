# This file is generated
# Do not edit !!!
require_relative 'base'

module Onix
  module V3_0
    class Header < Base
      node_attribute_accessor :datestamp, of_type: 'dt.DateOrDateTime'
      node_attribute_accessor :sourcetype, of_type: 'SourceTypeCode'
      node_attribute_accessor :sourcename, of_type: 'string'

      subnode_accessor :sender, for_tag: 'Sender', min_occurs: '1', max_occurs: '1'
      subnode_accessor :addressees, for_tag: 'Addressee', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :message_number, for_tag: 'MessageNumber', min_occurs: '0', max_occurs: '1'
      subnode_accessor :message_repeat, for_tag: 'MessageRepeat', min_occurs: '0', max_occurs: '1'
      subnode_accessor :sent_date_time, for_tag: 'SentDateTime', min_occurs: '1', max_occurs: '1'
      subnode_accessor :message_notes, for_tag: 'MessageNote', min_occurs: '0', max_occurs: 'unbounded'
      subnode_accessor :default_language_of_text, for_tag: 'DefaultLanguageOfText', min_occurs: '0', max_occurs: '1'
      subnode_accessor :default_price_type, for_tag: 'DefaultPriceType', min_occurs: '0', max_occurs: '1'
      subnode_accessor :default_currency_code, for_tag: 'DefaultCurrencyCode', min_occurs: '0', max_occurs: '1'
    end
  end
end
