Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post "users", to: "auth#create"
  post "users/:id_user", to: "auth#login"

  delete "users", to: "profiles#destroy"
  patch "users", to: "profiles#edit"
  patch "users", to: "profiles#logOut"

  post "chats", to:"chatlists#create"
  get "chats", to:"chatlists#index"
  delete "chats/:id_chat", to: "chatlists#destroy"
  get "chats/:id_chat", to: "chatlists#show"

  patch "chats/:id_chat", to:"chatlists#edit"
  patch "chats/:id_chat", to:"chats#addUser"
  patch "chats/:id_chat", to:"chats#deleteUser"

  post "messages", to:"chats#create"
  delete "messages/:id", to:"chats#destroy"
  patch "messages/:id", to:"chats#edit"

  get "users/:id", to:"search#find"
  # Defines the root path route ("/")
  # root "posts#index"
end
