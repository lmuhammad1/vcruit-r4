Vcruit::Application.routes.draw do

	root :to => 'static_pages#home'	

	get 'about', to: 'static_pages#about', as: 'about'
	get 'contact', to: 'static_pages#contact', as: 'contact'
end

