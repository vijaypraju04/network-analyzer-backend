Rails.application.routes.draw do
  get 'rails/g'

  get 'rails/controller'

  get 'rails/api/v1/Links'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :update]
    resources :targets, only: [:index, :update]
    resources :links, only: [:index, :update]
  end
end

end
