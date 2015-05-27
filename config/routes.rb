Rails.application.routes.draw do
  root 'topics#featured'

  get 's'     => 'topics#featured'
  get 't'     => 'topics#featured', as: 'featured_topic'
  resources :topics, :path => '/t'
  resources :stories, :path => '/s'

  get 'u/:id' => 'users#show'


  # root 'landing#no_info'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  devise_for :users, :path => '/u', :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

end
