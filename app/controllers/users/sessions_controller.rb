class Users::SessionsController < Devise::SessionsController

  def create
    super do |resource|   #superメソッドをブロックとして使用することで、Deviseのデフォルトのcreateアクションが完了した後にカスタムの処理を追加できる
      if resource.persisted?   #リソース（ユーザー）がデータベースに永続化されているかどうかを確認
        flash[:notice] = 'ログインが成功しました。'
        sign_in(resource_name, resource)
        redirect_to root_path and return
      end
    end
  end


  private

  def after_sign_in_path_for(resource)
    root_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end

end
