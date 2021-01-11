Rails.application.routes.draw do
  resources :posts
  root 'welcome#index'
  
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
  
end
