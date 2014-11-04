Rails.application.routes.draw do
root 'home#index'
# resources :employers

get 'employers/' => 'employers#index', as: :employers

get 'employers/new' => 'employers#new'
 
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

