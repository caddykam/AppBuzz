Rails.application.routes.draw do

  devise_for :users,controllers: {
  	sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'

  }




resources :jobs

devise_scope :user do 
	root 'users/sessions#new'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
