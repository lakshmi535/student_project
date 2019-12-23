class ExamsController < ApplicationController
	before_action :authenticate_user!
	def index
		@exams=Exam.all
	end	

	def new
		@exam=Exam.new
	end	

	def create
		@exam=Exam.create(exam_params)
		redirect_to exams_path
	end
	private
	def exam_params
		params.require(:exam).permit(:exam_name)
	end		
end
