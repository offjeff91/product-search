# frozen_string_literal: true

module Source
  module Vendors
    class MercadoLivre
      def call_api(_config)
        [
          Product.new({ source: 'mercado_livre', id: '001', metadata: { url: 'ml.com.br/my_jersey1' } }),
          Product.new({ source: 'mercado_livre', id: '004', metadata: { url: 'ml.com.br/my_jersey1' } })
        ]
      end
    end
  end
end
