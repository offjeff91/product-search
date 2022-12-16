class Source::Factory
  def mercado_livre
    Source::Vendors::MercadoLivre.new
  end
end