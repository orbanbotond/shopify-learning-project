class ProductsController < ApplicationController
  after_action :set_liquid_content_type, only: [:gallery]

  def gallery
    @current_shop = Shop.find_by shopify_domain: params[:shop]
    respond_to do |format|
      format.html { render layout: false }
      format.json { render json: @current_shop.shopify_products }
    end
  end

  def set_liquid_content_type
    self.content_type = 'application/json'
    # self.content_type = 'application/liquid'
  end
end
