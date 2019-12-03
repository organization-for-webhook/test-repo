Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'activities', to: 'activities#all_activities'
  # scope '/payload', :controller => :hooks do
  #   post :action_created_callback
  # end
  # match '/payload' => 'activities#action_created_callback', via: :post
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
