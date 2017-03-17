class StudentsController < ApplicationController
  before_action :set_student, only: [:activate, :show]

  def activate
    @student.activate
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
