class Search
  def initialize(source_factory = SourceFactory.new, repository = ProductRepository.new)
    @source_factory = @source_factory
  end
  def run(config)
    products = source(config).call(config)
    products.each do |product|
      @repository.check(product)
    end
  end
  protected
  def source(config)
    @source_factory.send(config)
  end
end