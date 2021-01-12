class CommentsController < ApplicationController

  def new
    @comments = Comments.all
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    # if @comment.save
      # redirect_to root_path
      # ActionCable.server.broadcast 'comment_channel', text: @comment
    # end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(
      post_reader_id: current_user.id,
      post_writer_id: current_user.id
      post_id: params[:post_id])
  end
end