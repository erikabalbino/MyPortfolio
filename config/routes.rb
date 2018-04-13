Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # delete('/projects/:id', to: 'projects#destroy')

  resource :session, only: [:new, :create, :destroy]

  resources :users, shallow: true do
      resources :projects, only: [:new, :create, :edit, :update, :show, :destroy]
  end

  resources :projects, shallow: true do
      resources :images, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
  end

  # Users#index
  get('/', {to: 'users#index', as: :root})

  post('/contact_me', to: 'users#contact_me')

end
