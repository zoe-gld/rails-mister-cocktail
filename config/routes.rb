Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create destroy]
    resources :reviews, only: %i[create destroy]
  end

end
