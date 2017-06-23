ShopifyApp.configure do |config|
  config.application_name = 'My Product Slideshow Shopify App'
  config.api_key = 'a110c144da10f17938dc25b3e2c6723e'
  config.secret = '0ebb925469e8f6ba52a49986ada2e5f7'
  config.scope = 'read_products, read_orders'
  config.embedded_app = true

  config.webhooks = [
    {topic: 'products/create', address: 'https://e711ec89.ngrok.io/webhooks/products_create', format: 'json'},
    {topic: 'products/update', address: 'https://e711ec89.ngrok.io/webhooks/products_update', format: 'json'},
    {topic: 'products/delete', address: 'https://e711ec89.ngrok.io/webhooks/products_delete', format: 'json'},
  ]
end
