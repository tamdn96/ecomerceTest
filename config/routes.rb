Rails.application.routes.draw do
  resources :file_exports
  resources :products do
    collection do
      get 'remove_all'
    end
  end
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
