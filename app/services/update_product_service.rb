class UpdateProductService
  attr_reader :product, :data

  def initialize(product, data)
    @product = product
    @data = data
  end

  def call
    product.name = data['title']
    product.image_url = data['images'].first['src'] rescue nil
    product.save
  end
end
