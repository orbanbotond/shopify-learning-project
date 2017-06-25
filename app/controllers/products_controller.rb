class ProductsController < ApplicationController
  after_action :set_liquid_content_type, only: [:gallery]

  def gallery
  	@current_shop = Shop.find_by shopify_domain: params[:shop]
    render layout: false
  end

  def set_liquid_content_type
    self.content_type = 'application/liquid'
  end
end
