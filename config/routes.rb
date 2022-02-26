Rails.application.routes.draw do

  root 'homes#top'
  # 管理者(Boss)用
  # URL /boss/sign_in ...
  devise_for :boss, skip: [:registrations, :passwords], controllers: {
    sessions: 'boss/sessions'
  }
  namespace :bosses do
    resources :workers, only: [:index, :show] do
      resources :working_times, only: [:new, :create, :edit, :update] do
        resources :requests, only: [:edit, :update]
      end
    end
    get 'requests/index' => 'requests#index'
  end

  # 労働者用
  # URL /workers/sign_in ...
  devise_for :worker, skip: [:passwords,], controllers: {
    registrations: 'worker/registrations',
    sessions: 'worker/sessions'
  }
  namespace :workers do
    resources :workers, only: [:show] do
      resources :working_times, only: [:index] do
        resources :requests, only: [:new, :create, :index, :show]
      end
      patch 'working_times/attendance' => 'working_times#attendance'
      patch 'working_times/leaving' => 'working_times#leaving'

    end


  end




end
