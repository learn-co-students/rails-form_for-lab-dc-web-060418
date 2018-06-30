class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]
    
    def index
        @students = Student.all
    end

    def show
        
    end

    def new
        @student = Student.new 
    end

    def create
        Student.create(params.require(:student))
        redirect_to student_path(Student.last.id)
    end

    def edit
        
    end

    def update
        @student.update(params.require(:student))
        redirect_to student_path(params[:id])
    end


    private

    def set_student
      @student = Student.find(params[:id])
    end

    def post_params(*args)
  	    params.require(:student).permit(*args)
	end	
end