Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :genres do 
        resources :books
      end
      resources :books
    end
  end
end
