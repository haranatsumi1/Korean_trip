Rails.application.routes.draw do
  root to: 'static_pages#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    delete "sign_out", :to => "users/sessions#destroy"
  end

  resources :posts, only: %i[index new create]
end
