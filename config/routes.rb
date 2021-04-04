Rails.application.routes.draw do
  resources :sessions
  resources :approvals
  resources :solution_suggestions
  resources :scientific_facts
  resources :social_facts
  resources :problems
  resources :categories
  resources :users

  root 'users#new'
end
