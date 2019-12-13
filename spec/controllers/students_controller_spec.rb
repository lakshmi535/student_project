require 'rails_helper'

  before do
    sign_in(user, scope: :user)
  end
  RSpec.describe HomeController, type: :controller do
  	describe "GET list" do
  		it "assigns @students" do
      		student = Student.create(:name => "aaa", :level_id => 1)
      		get :index
      		expect(assigns(:teams)).to eq([team])
    	end

    	it "renders the lisi template" do
      		get :index
      		expect(response).to render_template("list")
    	end
  	end
  	
end
