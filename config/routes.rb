Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "start_pages#welcome"
  get "/users/new", to: "users#new"
  get "/auths/login", to: "auths#login"

  get "up" => "rails/health#show", as: :rails_health_check

  post "/auths", to: "auths#create"
  delete "/auths/:id_user", to: "auths#delete"

  post "/users", to: "users#create"
  delete "/users/:id_user", to: "users#delete"
  patch "/users/:id_user", to: "users#edit"
  get "/users/:id_user", to: "users#show"

  get "/chat_lists", to: "chat_lists#index" #all chats

  post "/chats", to: "chats#create"
  delete "/chats/:id_chat", to: "chats#delete"
  get "/chats/:id_chat", to: "chats#show"
  post "/chats/:id_chat/:id_user", to: "chats#addUser"
  delete "/chats/:id_chat/:id_user", to: "chats#deleteUser"
  patch "/chats/:id_chat", to: "chats#edit"

  post "/messages/:id_chat", to: "messages#create"
  delete "/messages/:id_chat/:id_mes", to: "messages#delete"
  patch "/messages/:id_chat/:id_mes", to: "messages#edit"
  # Defines the root path route ("/")
  # root "posts#index"
end
