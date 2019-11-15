Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create destroy]
  end

  # post 'cocktails/:id', to: "doses#create"

end
