#rspec spec/features/create_student_spec.rb
require 'rails_helper'
RSpec.describe 'create_student_spec.rb', type: :feature do
  scenario 'valid inputs' do
    visit students_list_path
    click_link 'Add new Student'
    fill_in 'name', with: 'Minneapolis'
    fill_in 'level_id', with: '3'
    click_on 'Create'
    visit students_list_path
    expect(page).to have_content('Minneapolis')
  end
  scenario 'invalid inputs' do
    visit students_list_path
    click_link 'Add new Student'
    fill_in 'name', with: 'Minneapolis'
    fill_in 'level_id', with: '3'
    click_on 'Create'
    visit students_new_path
  end
end  