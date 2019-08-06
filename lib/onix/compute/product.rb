require_relative '../v3_0.rb'

module Onix
  module Compute
    class Product < V3_0::Product

      def uniq_identifier
        self.record_reference.str_value
      end

    end
  end
end
