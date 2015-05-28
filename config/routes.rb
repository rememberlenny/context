Rails.application.routes.draw do
  root 'topics#featured'

  get 's'     => 'topics#featured'
  get 't'     => 'topics#featured', as: 'featured_topic'
  resources :topics, :path => '/t'
  resources :stories, :path => '/s'



  # root 'landing#no_info'
  devise_for :users, :path => '/u', :controllers => {
    omniauth_callbacks: 'omniauth_callbacks'
  }
  # match '/u/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  # get 'u/:id' => 'users#show'

end
