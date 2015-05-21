Rails.application.routes.draw do
  root 'topics#featured'

  resources :topics, :path => '/t' do
    resources :stories, only: [:show, :edit, :update, :destroy], :path => '/s'
  end
  resources :stories, only: [:index, :new, :create], :path => '/s'

  get 'u/:id' => 'users#show'


  # root 'landing#no_info'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  devise_for :users, :path => '/u', :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

end
