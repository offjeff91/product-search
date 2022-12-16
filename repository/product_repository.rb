# frozen_string_literal: true

module Repository
  class ProductRepository
    def check(product)
      if exists?(product)
        check_data(product, false)
      else
        new_product = create(product)
        check_data(new_product, true)
      end
    end

    protected

    def check_data(product, is_new)
      { product: product, is_new?: is_new }
    end
  end
end
