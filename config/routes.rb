Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:index, :show, :edit, :update, :destroy]
end
