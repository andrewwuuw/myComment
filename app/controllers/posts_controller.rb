class PostsController < ApplicationController
  before_action :find_post , only:[:edit, :destroy, :update]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :user_showall, only: [:menu]

  def menu
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(clean_params)
    if @post.save
      redirect_to menu_path
    else
      render :new
    end
  end

  def update
    if @post.update(clean_params)
      redirect_to menu_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to menu_path if @post.destroy
  end

  private
  def clean_params
    params.require(:post).permit(:content)
  end

  def find_post
    @post = current_user.posts.find_by(id: params[:id])
  end

  def user_showall
    @users = User.all
  end
end
