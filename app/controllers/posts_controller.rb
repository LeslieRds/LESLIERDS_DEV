class PostsController < ApplicationController
  before_action :set_post, only: %i[show destroy edit update]
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @comments = @post.comments.order(created_at: :desc)
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to @post, notice: 'Article créé avec succès.'
    else
      render :new,  status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @post= Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: 'Article mis à jour avec succès.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    Post.find(params[:id]).user
    @post.destroy
    redirect_to posts_path, status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :image, :category, :subtitle)
  end
end
