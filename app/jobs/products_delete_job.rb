class ProductsDeleteJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
      pr = shop.shopify_products.find_by shopify_product_id: webhook['id']
      pr.destroy if pr.present?
    end
  end
end
