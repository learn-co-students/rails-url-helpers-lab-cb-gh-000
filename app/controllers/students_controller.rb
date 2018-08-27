class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def populate
    Student.create(first_name: "Jim", last_name: "Bob")
    Student.create(first_name: "Jan", last_name: "Bill")
    redirect_to '/students'
  end

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    @student = set_student
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
