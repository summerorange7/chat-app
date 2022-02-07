Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
 root to: "messages#index" #ルートパスはここへ行くよ:messages_controllerのindexアクション
 resources :users, only: [:edit, :update]
 resources :rooms, only: [:new, :create]#roomsコントローラーへGo!・ただしnewとcreateの２アクションのみ
 
end