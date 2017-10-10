Rails.application.routes.draw do
  get 'tasks/show'

  get 'tasks/new'

  get 'tasks/edit'

  get 'tasks/index'

  root 'tasks#index'
  resources :tasks
  patch 'tasks/:id/complete', to: 'tasks#complete', as: :complete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
