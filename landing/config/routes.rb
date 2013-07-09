Landing::Application.routes.draw do
  resources :messages
  resources :landing
  
  match 'landing' => 'landing#index', :as => 'landing', :via => :get
  match 'landing' => 'landing#create', :as => 'landing', :via => :post
  
  root :to => "landing#index"
end
