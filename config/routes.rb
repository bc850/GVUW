Rails.application.routes.draw do
  devise_for :authors
  namespace :authors do
    get '/account' => 'accounts#edit', as: :account
    resources :news do
      put 'publish' => 'news#publish', on: :member
      put 'unpublish' => 'news#unpublish', on: :member
    end
  end

  scope module: 'home' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'news' => 'news#index', as: :news_index
    get 'news/:id' => 'news#show', as: :news
  end
  root to: "home/news#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
