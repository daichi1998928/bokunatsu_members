Rails.application.routes.draw do

  namespace :admin do
    resources :members
  end

  get 'home/top'
  root to: "home#top"
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
