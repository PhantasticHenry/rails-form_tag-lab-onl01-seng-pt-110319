class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    session[:new_student_params] = params
    redirect_to new_student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end