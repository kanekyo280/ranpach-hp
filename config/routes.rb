Rails.application.routes.draw do
root "items#index"
get "player", to: "items#player"
resources :items, only: [:new, :create,]
end
