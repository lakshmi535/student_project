Rails.application.routes.draw do
  resources :exams
   resources :marks
  
  root to:'home#index'
  get 'home/about_us'
  get 'home/contact_us'
  get 'home/branches'
  # get 'home/student_information'
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
	get 'students/levels'
	get 'students/get_students'
	get "/get_students" ,to: "students#get_students"
	get "/get_names" ,to: "marks#get_names"
end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm 