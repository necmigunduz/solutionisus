Rails.application.routes.draw do
  resources :approvals
  resources :solution_suggestions
  resources :scientific_facts
  resources :social_facts
  resources :problems
  resources :categories
  resources :users

  root 'users#new'
end
