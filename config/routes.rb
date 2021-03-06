Rails.application.routes.draw do
  
  devise_for :post_readers, controllers: {
    sessions: 'post_readers/sessions',
    passwords: 'post_readers/passwords',
    registrations: 'post_readers/registrations'
  }

  devise_for :post_writers, controllers: {
    sessions: 'post_writers/sessions',
    passwords: 'post_writers/passwords',
    registrations: 'post_writers/registrations'
  }

  resources :posts do
    resources :comments, only: [:create]
    resources :favorites, only: [:create, :destroy]
  end

  root 'welcome#index'
end
