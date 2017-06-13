class ShopifyProduct < ApplicationRecord
  belongs_to :product_group

  delegate :title, to: :store_in_shopify

  def store_in_shopify
    @store_in_shopify ||= ShopifyAPI::Product.find(shopify_product_id)
  end

end
