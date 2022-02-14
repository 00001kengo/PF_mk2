Rails.application.routes.draw do

  root 'homes#top'
  # 管理者(Boss)用
  # URL /boss/sign_in ...
  devise_for :boss, skip: [:registrations, :passwords], controllers: {
    sessions: 'boss/sessions'
  }
  namespace :bosses do
    resources :workers, only: [:index, :show, :edit]
    resources :requests, only: [:index, :show, :update]
  end

  # 労働者用
  # URL /workers/sign_in ...
  devise_for :worker, skip: [:passwords,], controllers: {
    registrations: 'worker/registrations',
    sessions: 'worker/sessions'
  }
  namespace :workers do
    resources :workers, only: [:show]
    resources :requests, only: [:index, :show, :new, :create]

  end




end
