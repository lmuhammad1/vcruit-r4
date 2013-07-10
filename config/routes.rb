Vcruit::Application.routes.draw do

  resources :profiles

  resources :video_pages

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
	root :to => 'static_pages#home'	

	get 'about', to: 'static_pages#about', as: 'about'
	get 'contact', to: 'static_pages#contact', as: 'contact'
end

