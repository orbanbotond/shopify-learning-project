class ProductsCreateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
      product = shop.shopify_products.create shopify_product_id:webhook['id'], product_group: ProductGroup.first
      ::UpdateProductService.new(product, webhook).call
    end
  end
end
