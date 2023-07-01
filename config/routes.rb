Rails.application.routes.draw do
  get 'up' => 'health#show', as: :rails_health_check
  mount Spina::Engine => '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
