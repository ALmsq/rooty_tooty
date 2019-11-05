Rails.application.routes.draw do
  get 'smoothies/index'
  get 'smoothies/show'
  get 'smoothies/new'
  get 'smoothies/create'
  get 'smoothies/edit'
  get 'smoothies/update'
  get 'smoothies/destroy'
  get 'ingredients/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :smoothies, only: [:index]
  # get '/smoothies' => 'smoothies#index'
end
