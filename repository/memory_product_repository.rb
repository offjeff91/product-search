# frozen_string_literal: true

require_relative 'product_repository'
require_relative '../product'

module Repository
  class MemoryProductRepository < Repository::ProductRepository
    def initialize
      super
      @data = [
        Product.new({ source: 'mercado_livre', id: '001', metadata: { url: 'ml.com.br/my_jersey1' } }),
        Product.new({ source: 'mercado_livre', id: '002', metadata: { url: 'ml.com.br/my_jersey2' } }),
        Product.new({ source: 'facebook', id: '002', metadata: { group_id: '031914189' } }),
        Product.new({ source: 'mercado_livre', id: '003', metadata: { url: 'ml.com.br/my_jersey3' } })
      ]
    end

    protected

    def find(product)
      @data.find do |saved_product|
        saved_product[:id] == product[:id] && saved_product[:source] == product[:source]
      end
    end

    def create(product)
      @data << product
    end
  end
end
