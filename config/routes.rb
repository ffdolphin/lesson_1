Rails.application.routes.draw do
  root :to => "lists#index"

  devise_for :users

  # get '/patiants/:id' , to: 'item#show', as: 'patiant'
  get 'items/new/:id', to: 'items#new', as: 'new_item'
  get 'list/:id', to: 'items#index', as: 'items'
  post 'list/:id', to: 'items#create'
  resources :lists
  resources :items, except:[:index,:new]

  get 'done' => 'items#done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
