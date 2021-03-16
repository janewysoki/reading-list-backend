Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reading_lists do 
        resources :books
      end
    end
  end
end
