class StudentsController < ApplicationController
    before_action :set_student, only: [:show,:edit,:update]

    def home
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def show
        
    end


    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:notice] = "#{@student.name} has signed up"
            redirect_to @student
        else
            render 'new'
        end
    end

    def edit
       
    end

    def update
      
        if @student.update(student_params)
            flash[:notice] = "Successfully updated profile"
            redirect_to @student
        else
            flash[:notice] = "Failed to save changes to profile"
            render 'edit'
        end
    end
    

    private

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :password, :email)
    end

end