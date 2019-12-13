class StudentsController < ApplicationController
	before_action :authenticate_user!
	def list
		@students = Student.all
	end
	def show
		@student = Student.find(params[:id])
	end
	def new
		@student = Student.new
		@levels = Level.all
	end
	def student_params
		params.require(:student).permit(:name, :level_id, :english_marks, :math_marks, :science_marks,:avatar)
	end
	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to :action => 'list'
		else
			@levels = Level.all
			render :action => 'new'
		end
	end
	def edit
		@student = Student.find(params[:id])
		@levels = Level.all
	end
	def student_param
		params.require(:student).permit(:name, :level_id, :english_marks, :math_marks, :science_marks,:avatar)
	 end
	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_param)
			redirect_to :action => 'show', :id => @student
		else
			@levels = Level.all
			render :action => 'edit'
		end
	end
	def delete
		Student.find(params[:id]).destroy
		redirect_to :action => 'list'
		
	end
	def show_levels
		@level = Level.find(params[:id])
	end
	def view
		@students=Student.all
	end	
	
end
