class HomeController < ShopifyApp::AuthenticatedController
  def index
    @product_groups = ProductGroup.all
  end
end
