Rails.application.routes.draw do
  resources :items
  resources :lists
  get 'done' => 'items#done' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
