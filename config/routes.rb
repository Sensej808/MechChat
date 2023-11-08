Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post "register", to: "auth#register"
  post "login", to: "auth#login"

  delete "deleteAccount", to: "profile#deleteAccount"
  patch "patchAccount", to: "profile#patchAccount"
  patch "logOutAccount", to: "profile#logOutAccount"

  post "createChat", to:"chatlist#createChat"
  get "gotoChat", to:"chatlist#gotoChat"
  delete "deleteChat", to: "chatlist#deleteChat"
  get "getChatList", to: "chatlist#getChatList"

  post "sendMessage", to:"chat#sendMessage"
  delete "deleteMessage", to:"chat#deleteMessage"
  patch "patchMessage", to:"chat#patchMessage"
  post "addUser", to:"chat#addUser"
  delete "deleteUser", to:"chat#deleteUser"
  patch "patchChat", to:"chat#patchChat"

  patch "searchUser", to:"search#searchUser"
  # Defines the root path route ("/")
  # root "posts#index"
end
