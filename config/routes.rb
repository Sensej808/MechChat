Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "auth/:id_user", to: "auths#create"
  delete "auth/:id_user", to: "auths#delete"

  post "users", to: "users#create"
  delete "users/:id_user", to: "users#delete"
  patch "users/:id_user", to: "users#edit"
  get "users/:id_user", to: "users#show"

  get "chatlists", to: "chatlists#index" #all chats

  post "chats", to: "chats#create"
  delete "chats/:id_chat", to: "chats#delete"
  get "chats/:id_chat", to: "chats#show"
  post "chats/:id_chat/:id_user", to: "chats#addUser"
  delete "chats/:id_chat/:id_user", to: "chats#deleteUser"
  patch "chats/:id_chat", to: "chats#edit"

  post "messages/:id_chat", to: "messages#create"
  delete "messages/:id_chat/:id_mes", to: "messages#delete"
  patch "messages/:id_chat/:id_mes", to: "messages#edit"
  # Defines the root path route ("/")
  # root "posts#index"
end
