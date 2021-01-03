module Spree
  module ProductsControllerDecorator
    def self.prepended(base)
      base.helper Spree::ReviewsHelper
    end

    reviews_fields = [:avg_rating, :reviews_count]
    reviews_fields.each { |attrib| Spree::PermittedAttributes.product_attributes << attrib }
  end
end

::Spree::ProductsController.prepend ::Spree::ProductsControllerDecorator if ::Spree::ProductsController.included_modules.exclude?(::Spree::ProductsControllerDecorator)
