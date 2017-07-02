class StudentsController < ApplicationController
 
  def index
    students_hash = Student.all

    @students = []

    students_hash.each do |student_hash|
      @students << Student.new(student_hash)
    end
  end

  def show
    @student = Student.find(params[:id])
  end
end
