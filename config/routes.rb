Rails.application.routes.draw do
  resources :plantes do
	  resources :remedes
	  resources :poisons
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
