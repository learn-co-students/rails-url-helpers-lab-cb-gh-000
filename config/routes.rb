Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  resources :students do
    member do
      get 'activate'
    end
  end
end
