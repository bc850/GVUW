Rails.application.routes.draw do
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact

  resources :news
  root to: "news#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
