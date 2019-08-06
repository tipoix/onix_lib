require_relative '../v3_0.rb'

module Onix
  module Compute
    class SenderIdentifier < V3_0::SenderIdentifier

      def uniq_identifier
        "#{self.sender_id_type.for_humans.parameterize}-#{self.id_value.str_value}"
      end

    end
  end
end
