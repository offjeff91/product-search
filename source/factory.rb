# frozen_string_literal: true

require_relative 'vendors/mercado_livre/facade'

module Source
  class Factory
    def mercado_livre
      Source::Vendors::MercadoLivre.new
    end
  end
end
