Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :articles do 
    resources :comments
  end

  resources :users do
  end

	resources :localbk, only: [:index]	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
