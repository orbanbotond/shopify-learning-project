class CreateShopifyProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :shopify_products do |t|
      t.references :product_group, foreign_key: true
      t.string :shopify_product_id

      t.timestamps
    end
  end
end
