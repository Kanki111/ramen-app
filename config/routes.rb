Rails.application.routes.draw do

  root "member/sessions#new"
  get "member/images/index" => "images#index"
  get "login" => "member/sessions#new", as: :login
  post "session" => "member/sessions#create", as: :session
  delete "session" => "member/sessions#destroy"
  resource :password, only: [ :show, :edit, :update]
  get "member/ramen_member/new" => "member/member#new"
  post "member/ramen_member/new" => "member/member#create"
  get "member/ramen_member/show" => "member/member#show"
  resources :comments, only: [:create]
  resources :posts do
    resources :comments, only: [:create]
  end

  namespace :member_posts do
    resources :comments
    post "comment" => "member_post_comment"
  end

  namespace :manager do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end
end
