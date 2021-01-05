module Spree
  module ProductsControllerDecorator
    def self.prepended(base)
      base.helper Spree::ReviewsHelper
    end
  end
end

::Spree::ProductsController.prepend ::Spree::ProductsControllerDecorator if ::Spree::ProductsController.included_modules.exclude?(::Spree::ProductsControllerDecorator)
