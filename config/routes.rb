Rails.application.routes.draw do

  root to:'home#index'
  get 'home/about_us'
  get 'home/contact_us'
  get 'home/branches'
  devise_for :users
	get 'students/list'
	get 'students/new'
	post 'students/create'
	patch 'students/update'
	get 'students/list'
	get 'students/show'
	get 'students/edit'
	get 'students/delete'
	get 'students/update'
	get 'students/show_levels'
	get 'students/view'
end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm