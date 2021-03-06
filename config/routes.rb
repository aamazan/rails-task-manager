Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    member do
       patch 'tasks/:id/complete', to: 'tasks#complete', as: :complete
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
