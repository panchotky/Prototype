Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#new'
  post 'items' => 'items#create'
  delete 'items/:id' => 'items#destroy', as: 'item'
# resources :items

end
