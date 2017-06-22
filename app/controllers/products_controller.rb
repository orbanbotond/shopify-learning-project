#this works too however this won't give us support for multitennanted app..
class ProductsController < ApplicationController
# class ProductsController < ShopifyApp::AuthenticatedController
  # skip_around_action :shopify_session, only: [:gallery]
  # skip_before_action :login_again_if_different_shop, only: [:gallery]
  after_action :set_liquid_content_type, only: [:gallery]

  def gallery
    render layout: false
  end

  def set_liquid_content_type
    self.content_type = 'application/liquid'
  end
end
