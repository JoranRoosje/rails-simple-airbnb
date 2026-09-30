Rails.application.routes.draw do
  resources :flats
  get "up" => "rails/health#show", as: :rails_health_check
end
