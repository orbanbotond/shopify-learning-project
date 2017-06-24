class AddShopIdToShopifyProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :shopify_products, :shop, foreign_key: true
  end
end
