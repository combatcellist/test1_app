class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: "投稿は更新されました"
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: "投稿できました"
    else
      render :new
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path, notice: "投稿は削除されました"
    else
      redirect_to root_path, notice: "投稿は削除できませんでした"
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, images: [])
  end


end
