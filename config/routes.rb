Rails.application.routes.draw do
  resources :approvals
  resources :solution_suggestions
  resources :scientific_facts
  resources :social_facts
  resources :problems
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
