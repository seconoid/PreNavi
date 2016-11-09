class StudentsController < ApplicationController
  def show
    @student = Student.find([:id])
  end

  def new
    @student = Student.new
  end
end
