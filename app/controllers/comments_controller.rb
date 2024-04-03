class CommentsController < ApplicationController
  before_action :set_user, only: %i[destroy]
  before_action :set_post, only: %i[new create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save!
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post), status: :see_other
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_user
    @user = current_user
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
