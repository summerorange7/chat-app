Rails.application.routes.draw do
  devise_for :users
 root to: "rooms#index" #ルートパスはここへ行くよ:rooms_controllerのindexアクション
 resources :users, only: [:edit, :update]
 resources :rooms, only: [:new, :create, :destroy] do
  #roomsコントローラーへGo!・ただしnewとcreate,destroyのみ
  resources :messages, only: [:index, :create]
 end
 
 
end