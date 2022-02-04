Rails.application.routes.draw do
  get 'messages/index'
 root to: "messages#index" 
 #ルートパスはここへ行くよ:messages_controllerのindexアクション
end