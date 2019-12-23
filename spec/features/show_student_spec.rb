#rspec spec/features/show_student_spec.rb
require 'rails_helper'
RSpec.describe 'show_student_spec',type: :feature do
	it 'displays student list correctly' do
	  	visit students_list_path
	  	click_link '@student.name'
	  	visit students_show_path
	end
end	  

	  	

	  	

