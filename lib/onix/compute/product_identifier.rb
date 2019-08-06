require_relative '../v3_0.rb'

module Onix
  module Compute
    class ProductIdentifier < V3_0::ProductIdentifier

      def for_humans
        "#{ self.product_id_type.for_humans } => #{ self.id_value.str_value }"
      end

    end
  end
end
