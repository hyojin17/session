Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  
  get 'home/index'

#get 'home/index' => 'home#index'와 같은 말.

  post 'home/create'

  get 'home/new'
  
  get 'home/destroy/:id' => 'home#destroy'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
