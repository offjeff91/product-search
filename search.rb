# frozen_string_literal: true

require './source/factory'
require './repository/memory_product_repository'
require './search_config'

class Search
  def initialize(source_factory = Source::Factory.new, repository = Repository::MemoryProductRepository.new)
    @source_factory = source_factory
    @repository = repository
  end

  def run(config)
    products = source(config).call_api(config)
    products.map(&method(:check))
  end

  protected

  def source(config)
    @source_factory.send(config.source)
  end

  def check(product)
    @repository.check(product)
  end
end

products = Search.new.run(
  SearchConfig.new(
    source: 'mercado_livre',
    text_search: 'camisa botafogo 1984'
  )
)
puts products
