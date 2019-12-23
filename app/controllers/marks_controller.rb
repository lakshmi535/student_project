class MarksController < ApplicationController
	before_action :authenticate_user!
	def index
		@marks=Mark.all
	end	

	def new
		@mark=Mark.new
	end	

	def create
		@mark=Mark.create(mark_params)
		redirect_to marks_path
	end
	def show
		@mark=Mark.find(params[:id])
	end	

	def destroy
		@mark=Mark.find(params[:id]).destroy
		redirect_to marks_path
	end	

	def get_names
		@students=Student.where(:level_id => params[:state])
		# binding.pry	
		respond_to do |format|
        	format.js
      	end 

	end	

	private
	def mark_params
		params.require(:mark).permit(:exam_type,:telugu_marks,:maths_marks,:hindi_marks,:student_id,:exam_id,:level_id)
	end	
end
