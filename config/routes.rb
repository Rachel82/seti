Rails.application.routes.draw do
  resources :comments
  resources :posts

	root 'simple_pages#landing_page'

  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/press'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
