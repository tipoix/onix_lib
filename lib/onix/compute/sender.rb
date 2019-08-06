require_relative '../v3_0.rb'

module Onix
  module Compute
    class Sender < V3_0::Sender

      def uniq_identifier
        if self.sender_identifiers.size == 0
          self.sender_name.str_value
        else
          #TODO
          self.sender_identifiers.map(&:uniq_identifier).join('_')
        end
      end

    end
  end
end
