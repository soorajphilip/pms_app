Rails.application.routes.draw do
  root "dashboard#index"
  resources :bookings
  resources :history do
    collection do
      get :search_query
    end
  end
  resources :search do
    collection do
      get :search_query
    end
  end
  resources :vehicles
end
