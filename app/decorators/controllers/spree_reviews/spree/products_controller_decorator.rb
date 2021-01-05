# frozen_string_literal: true

module SpreeReviews
  module Spree
    module ProductsControllerDecorator
      def self.prepended(base)
        base.helper ::Spree::ReviewsHelper
      end

      ::Spree::ProductsController.prepend self
    end
  end
end
