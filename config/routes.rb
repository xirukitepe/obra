Obra::Application.routes.draw do
  devise_for :users


  # get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  match "/home/comics" => "home#comics", via: [:get]

  resources :users do
    resources :portfolios, only: [:index] do
      collection do
        get 'list'
      end
    end
  end

  resources :comics do
    resources :readers, only: [:index]
    collection do
      get 'free'
      post :sort
    end

    resources :comic_chapters do
      resources :comic_images
    end
  end

  namespace :api do
    resources :comics do
      collection do
        get 'free'
      end

      resources :comic_chapters do
        resources :comic_images
      end
    end
  end
end
