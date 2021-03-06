Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :users,only: [:show,:index,:edit,:update,:create]
  resources :books
  root 'home#top'
  get 'home/about' => 'home#about'
end
