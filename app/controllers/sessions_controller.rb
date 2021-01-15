class SessionsController < ApplicationController
    skip_before_action :require_user, only: [:create, :new]
    def new
    end

    def show
    end

    def create
        student = Student.find_by(params[:id])

        if student && student.authenticate(params[:session][:password])
            session[:student_id] = student.id
            flash[:notice] = "Logged in!"
            redirect_to student
        else
            flash.now[:alert] = "There was something wrong with your credentials"
            render 'new'
        end
    end

    def destroy
        session[:student_id] = nil
        flash[:notice] = "You have been logged out"
        redirect_to root_path
    end
end