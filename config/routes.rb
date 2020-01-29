Rails.application.routes.draw do
  resources :friendships
  resources :story_points
  resources :user_stories
  resources :stories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
