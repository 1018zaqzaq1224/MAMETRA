Rails.application.routes.draw do

  devise_for :admins

  namespace :admin do

    resources :products, :only => [:index, :new, :edit, :create, :update, :destroy]

    resources :arts, :only => [:index, :new, :edit, :create, :update, :destroy]

    resources :genres, :only => [:show]

  	resources :snaps, :only => [:index, :new, :edit, :create, :update, :destroy] do
  		resources :items, :only => [:create, :update, :destroy]
      resources :snap_images, :only => [:create, :update, :destroy]
  	end
  end

  resources :homes, :only => [:index]

  resources :abouts, :only => [:index]

  resources :products, :only => [:index]

  resources :snaps, :only => [:index]

  resources :delis, :only => [:index]

  resources :genres, :only => [:show]

  resources :arts, :only => [:index]

 	get 'contacts' => 'contacts#index'
	post 'contacts/confirm' => 'contacts#confirm'
	post 'contacts/thanks' => 'contacts#thanks'

	root 'homes#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
