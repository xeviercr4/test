Rails.application.routes.draw do
  resources :production_countries
  resources :production_companies
  resources :people
  resources :movie_languages
  resources :movie_keywords
  resources :movie_genres
  resources :movie_crews
  resources :movie_companies
  resources :movie_casts
  resources :movies
  resources :language_roles
  resources :languages
  resources :keywords
  resources :genres
  resources :genders
  resources :departments
  resources :countries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
