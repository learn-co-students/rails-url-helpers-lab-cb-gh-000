class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    respond_to do |format|
      format.html { redirect_to student_path(@student), notice: 'Your status has been changed!.' }
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
