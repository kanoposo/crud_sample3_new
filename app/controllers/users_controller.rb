class UsersController < ApplicationController
  #一覧画面に対応するあくしょん
  def index
    @users = User.all
  end
  #新規作成画面に対応するアクション
  def new 
    @user = User.new
  end

  #新規登録するためのアクション
  def create
    User.create(user_params)
  end

  #編集するためのアクション
  def edit
    @user = User.find(params[:id])
  end

  #削除をするためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end
  #更新を行うためのルーティング
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  private 
  def user_params
    params.require(:user).permit(:name, :age)
  end

end
