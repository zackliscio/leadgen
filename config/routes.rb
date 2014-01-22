Leadgen::Application.routes.draw do
  # resources :prospects

  resources :prospects do
  	collection { post :import }
  end

  root :to => "prospects#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # devise_scope :user do
  #  get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
