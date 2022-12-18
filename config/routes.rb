Rails.application.routes.draw do
  resources :crud_tests do
    collection do
      match :search, via: %i[get post]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
