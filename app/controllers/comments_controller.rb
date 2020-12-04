class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment ,user: @comment.user
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:comment).merge(food_id: params[:food_id], user_id: current_user.id)
  end

end
