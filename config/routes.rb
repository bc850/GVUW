Rails.application.routes.draw do
  devise_for :authors
  namespace :authors do
    resources :news
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
