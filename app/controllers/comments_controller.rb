class CommentsController < ApplicationController
  def create
    @comment=Comment.new
    @comment.content=params[:content]
    @comment.post_id=params[:post_id]
    @comment.save
    
    redirect_to "/index"
  end

  def destroy
    @destroy_comment=Comment.find(params[:comment_id])
    @destroy_comment.destroy
    
    redirect_to "/index"
  end

end

