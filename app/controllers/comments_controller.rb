class CommentsController < ApplicationController
  respond_to :html
  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to @comment.assignment
  end
  
  private

    def comment_params
      params.require(:comment).permit(:notes, :assignment_id)
    end
end
