Rails.application.routes.draw do
  devise_for :users
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
      put 'publish' => 'events#publish', on: :member
      put 'unpublish' => 'events#unpublish', on: :member
    end
    resources :campaigns do
      put 'publish' => 'campaigns#publish', on: :member
      put 'unpublish' => 'campaigns#unpublish', on: :member
    end
    resources :board_members
    resources :staff_members
    resources :partners do
      put 'publish' => 'partners#publish', on: :member
      put 'unpublish' => 'partners#unpublish', on: :member
    end
    resources :organizations
  end

  namespace :dashboards do
    resources :landings
  end

  scope module: 'home' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'home' => 'pages#home', as: :home
    get 'news' => 'news#index', as: :news_index
    get 'news/:id' => 'news#show', as: :news
    resources :events do #-> url.com/events/:id
      resources :registrations #-> url.com/events/:event_id/registrations/
    end
    resources :campaigns
    get 'board-members' => 'board_members#index'#, as: :board_members
    get 'staff-members' => 'staff_members#index'
    get 'why-live-united', to: 'pages#why_live_united', as: :why_live_united
    get 'our-work', to: 'pages#our_work'
    resources :partners
  end
  root to: "home/pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
