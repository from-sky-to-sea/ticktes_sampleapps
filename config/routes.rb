Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # イベント（プロモータが指定するイベント）
  resources :events, only: [:show, :index, :new, :create]

  # 予約（イベントに対するプレイガイドの販売枠）
  # resources :bookings, only: [:show]

  #get '/patients/:id', to: 'patients#show'
  #get '/events/:id', to: 'bookings#index'

end
