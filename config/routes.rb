Rails.application.routes.draw do
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    post 'login', to: 'sessions#create', as: 'createlogin'
    get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :resources
  resources :users

# root 'users#index'
root 'home#index'
# resources :employers

get 'employers/' => 'employers#index', as: :employers

get 'employers/new' => 'employers#new', as: :new
 
post 'employers/' => 'employers#create'

get 'employers/:id' => 'employers#show', as: :employer

get 'employers/:id/edit' => 'employers#edit', as: :edit

patch 'employers/:id' => 'employers#update'

delete 'employers/:id' => 'employers#destroy'


# resources :users, only: [:index, :new, :create]
# resource :sessions, only: [:new, :create, :destroy]

end

# get 'beans/' => 'beans#index', as: :beans

# get 'beans/new' => 'beans#new'
 
# post 'beans/' => 'beans#create'

# get 'beans/:id' => 'beans#show', as: :bean

# get 'beans/:id/edit' => 'beans#edit', as: :edit_bean

# patch 'beans/:id' => 'beans#update'

# delete 'beans/:id' => 'beans#destroy'

