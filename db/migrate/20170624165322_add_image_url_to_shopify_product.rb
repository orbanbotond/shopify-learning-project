class AddImageUrlToShopifyProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :shopify_products, :image_url, :string
  end
end
