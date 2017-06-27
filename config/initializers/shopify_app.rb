ShopifyApp.configure do |config|
  config.application_name = 'My Product Slideshow Shopify App'
  config.api_key = 'a110c144da10f17938dc25b3e2c6723e'
  config.secret = '0ebb925469e8f6ba52a49986ada2e5f7'
  config.scope = 'read_products, write_script_tags'
  config.embedded_app = true

  config.webhooks = [
    {topic: 'products/create', address: 'http://e711ec89.ngrok.io/webhooks/products_create', format: 'json'},
    {topic: 'products/update', address: 'http://e711ec89.ngrok.io/webhooks/products_update', format: 'json'},
    {topic: 'products/delete', address: 'http://e711ec89.ngrok.io/webhooks/products_delete', format: 'json'},
  ]

  config.scripttags = [
    { event:'onload', src: 'http://e711ec89.ngrok.io/assets/scripttags/load_gallery.js' }
  ]
end
