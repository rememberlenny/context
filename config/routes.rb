Rails.application.routes.draw do
  root 'topics#featured'

  get 't/:id' => 'topics#show'
  resources :topics, as: 't' do
    resources :stories, only: [:show, :edit, :update, :destroy], as: 's'
  end
  resources :stories, only: [:index, :new, :create], as: 's'

  get 'u/:id' => 'users#show'


  # root 'landing#no_info'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

end
