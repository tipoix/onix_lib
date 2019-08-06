require_relative '../v3_0.rb'

module Onix
  module Compute
    class SentDateTime < V3_0::SentDateTime

      def at
        DateTime.parse self.str_value
      end

    end
  end
end
