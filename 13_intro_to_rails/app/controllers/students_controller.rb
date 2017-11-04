class StudentsController < ApplicationController
  def index
    # nothing here!
  end

  def new
    # don't (yet) need a student here
  end

  def create
    byebug
    student = Student.create(params[:student])
    redirect '/'
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
