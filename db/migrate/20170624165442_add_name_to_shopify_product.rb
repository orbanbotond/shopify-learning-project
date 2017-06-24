class AddNameToShopifyProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :shopify_products, :name, :string
  end
end
