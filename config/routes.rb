Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books
      resources :reading_lists
    end
  end
end
