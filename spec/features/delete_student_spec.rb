#rspec spec/features/delete_student_spec.rb
require 'rails_helper'
RSpec.describe 'delete_student_spec',type: :feature do
	it 'success' do
		 s=Student.create(name: 'NYC',:level_id =>5 ).destroy
		 visit students_list_path
		 expect(page).not_to have_content('NYC')
	end	 
end