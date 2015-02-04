OmniauthDemo1::Application.routes.draw do
  resources :posts
  root :to => "posts#index"
  #OmniAuth
  match "/auth/:provider/callback" => "sessions#callback"
  match "/logout" => "sessions#destroy", :as => :logout

end
