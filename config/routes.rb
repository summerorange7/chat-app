Rails.application.routes.draw do
  devise_for :users
 root to: "rooms#index" #ルートパスはここへ行くよ:rooms_controllerのindexアクション
 resources :users, only: [:edit, :update]
 resources :rooms, only: [:new, :create]#roomsコントローラーへGo!・ただしnewとcreateの２アクションのみ
 
end