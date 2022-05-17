class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:title, :start, :end, :checkbox, :introduction))
      if @user.save
        flash[:notce] = "新規登録完了しました。"
        redirect_to :users
      else
        render "new"
      end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title, :start, :end, :checkbox, :introduction))
      flash[:notice] = "スケジュール内容を更新しました。"
      redirect_to :users
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.title}を削除しました。"
    redirect_to :users
  end

end
