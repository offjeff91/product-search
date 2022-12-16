# frozen_string_literal: true

module Repository
  class ProductRepository
    def check(product)
      create(product) unless find(product)
    end
  end
end
