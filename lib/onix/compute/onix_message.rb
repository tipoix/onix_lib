require_relative '../v3_0.rb'

module Onix
  module Compute
    class ONIXMessage < V3_0::ONIXMessage

      def split_products
        res = []

        self.products.each do |product|
          tmp = ONIXMessage.new
          tmp.release = self.release
          tmp.products << product
          tmp.header = self.header
          res << tmp
        end

        res
      end

    end
  end
end
