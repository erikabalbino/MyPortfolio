Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, shallow: true do
      resources :projects, only: [:create, :update, :show, :destroy]
  end

  # Users#index
  get('/', to: 'users#index')
end
