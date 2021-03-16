Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reading_lists do 
        resources :books #now we no longer can access ap1/v1/books so books has to be accessed through reading lists
      end
    end
  end
end
