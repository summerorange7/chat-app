class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)#updateアクションで保存成功
      redirect_to root_path#root（チャット画面）にリダイレクト
    else#updateアクションで失敗したら
      render :edit#editアクションのビューを表示
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
