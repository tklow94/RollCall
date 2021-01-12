class StudentsController < ApplicationController

    def home
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:notice] = "#{@student.name} has signed up"
            redirect_to root_path
        else
            render 'new'
        end
    end
    

    private

    def student_params
        params.require(:student).permit(:name, :password, :email)
    end

end