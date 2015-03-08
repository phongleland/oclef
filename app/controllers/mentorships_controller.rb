class MentorshipsController < ApplicationController
  
  respond_to :html
  
  def new
    @mentorship = Mentorship.new({:student_id=>params[:student_id]})

    respond_with(@mentorship)
  end

  def create
    @mentorship = Mentorship.new(mentorship_params)
    flash[:notice] = 'Teacher was successfully created.' if @mentorship.save
    respond_with(@mentorship.student)
  end
  
  private

    def mentorship_params
      params.require(:mentorship).permit(:teacher_id, :student_id, :start_date, :end_date)
    end
end
