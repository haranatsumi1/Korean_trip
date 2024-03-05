class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    private

    # 現在ログインしているユーザーを返す（いなければnil）
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # ユーザーがログインしていればtrue、その他ならfalseを返す
    def logged_in?
      !current_user.nil?
    end



end
