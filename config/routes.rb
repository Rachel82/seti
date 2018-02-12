Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  resources :users

	root 'simple_pages#landing_page'

  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/press'

  post 'simple_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
