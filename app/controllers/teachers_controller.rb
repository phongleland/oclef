class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @teachers = Teacher.all
    respond_with(@teachers)
  end

  def show
    respond_with(@teacher)
  end

  def new
    @teacher = Teacher.new
    respond_with(@teacher)
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      InviteMailer.teacher(@teacher.id).deliver_now!
      flash[:notice] = 'Teacher was successfully created.' 
    end
    respond_with(@teacher)
  end

  def update
    flash[:notice] = 'Teacher was successfully updated.' if @teacher.update(teacher_params)
    respond_with(@teacher)
  end

  def destroy
    @teacher.destroy
    respond_with(@teacher)
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:name, :email, :bio, :education, :honors, :experience, :instrument_ids => [], :school_ids => [])
    end
end
