Rails.application.routes.draw do
  root 'welcome#index'
  get '/progresses' => 'progresses#index'
  get '/goals' => 'goals#index'
  get '/goals/new' => 'goals#new'

end
