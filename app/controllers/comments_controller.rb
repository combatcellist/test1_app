class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path, notice: "コメントしました"
    else
      @comments = @post.comments.includes(:user)
      render "/"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(
      post_reader_id: current_user.id,
      post_writer_id: current_user.id
      post_id: params[:post_id])
  end
end