Rails.application.routes.draw do
  resources :articles
  resources :announcements
  resources :announcement_priorities
  root 'pages#home'
  get 'about', to:'pages#about'
end
