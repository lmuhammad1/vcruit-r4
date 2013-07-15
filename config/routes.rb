Vcruit::Application.routes.draw do

  resources :profiles
  resources :video_pages

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
	root :to => 'static_pages#home'	

	get 'info', to: 'static_pages#info', as: 'info'
	get 'pricing', to: 'static_pages#pricing', as: 'pricing'
	get 'faq', to: 'static_pages#faq', as: 'faq'
  get 'contact', to: 'static_pages#contact', as: 'contact'


  get 'welcome', to: 'profiles#welcome', as: 'welcome'
end

