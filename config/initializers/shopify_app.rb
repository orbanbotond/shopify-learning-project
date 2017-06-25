ShopifyApp.configure do |config|
  config.application_name = 'My Product Slideshow Shopify App'
  config.api_key = 'a110c144da10f17938dc25b3e2c6723e'
  config.secret = '0ebb925469e8f6ba52a49986ada2e5f7'
  config.scope = 'read_products, write_script_tags'
  config.embedded_app = true

  config.webhooks = [
    {topic: 'products/create', address: 'http://52b00abd.ngrok.io/webhooks/products_create', format: 'json'},
    {topic: 'products/update', address: 'http://52b00abd.ngrok.io/webhooks/products_update', format: 'json'},
    {topic: 'products/delete', address: 'http://52b00abd.ngrok.io/webhooks/products_delete', format: 'json'},
  ]

  config.scripttags = [
    { display_scope: 'all', event:'onload', src: 'https://52b00abd.ngrok.io/assets/scripttags/load_gallery.js' }
  ]
end
