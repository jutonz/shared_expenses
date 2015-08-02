Rails.application.routes.draw do
  resources :shared_expenses

  root 'shared_expenses#index'
end
