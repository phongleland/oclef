class InviteMailer < BaseMailer
  
  def teacher(teacher_id)
    @teacher = Teacher.find(teacher_id)
    @subject = "You've been added as a teacher on Oclef"
    @accept_invitation_url = "#"
    
    send_now(@subject, @teacher.email)
  end
  
  def relative(parent_id)
    @parent = Parent.find(parent_id)
    @subject = "Oclef Lesson Planner"
    @accept_invitation_url = "#"
    
    send_now(@subject, @parent.email)
  end
end