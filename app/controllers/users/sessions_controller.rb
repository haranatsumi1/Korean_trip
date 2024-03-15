class Users::SessionsController < Devise::SessionsController

  def create
    super do |resource|
      if resource.persisted?
        flash[:notice] = 'ログインが成功しました。'
        sign_in(resource_name, resource)
        redirect_to posts_path and return
      end
    end
  end


  private

  def after_sign_in_path_for(resource)
    posts_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end
end
