class ProductGroupsController < ShopifyApp::AuthenticatedController
  def show
    @group = ProductGroup.find params[:id]
  end
end
