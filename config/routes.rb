Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [] do
    collection do
      get :gallery
    end
  end

  resources :product_groups, only: [:index, :show] do
  end
end
