Rails.application.routes.draw do
  devise_for :authors
  namespace :authors do
    get '/account' => 'accounts#edit', as: :account
    put '/info' => 'accounts#update_info', as: :info
    put '/change_password' => 'accounts#change_password', as: :change_password
    resources :news do
      put 'publish' => 'news#publish', on: :member
      put 'unpublish' => 'news#unpublish', on: :member
    end
    resources :events do #-> url.com/events/:id
      resources :registrations #-> url.com/events/:event_id/registrations/
    end
  end

  scope module: 'home' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'home' => 'pages#home', as: :home
    get 'news' => 'news#index', as: :news_index
    get 'news/:id' => 'news#show', as: :news
    resources :events
  end
  root to: "home/pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
