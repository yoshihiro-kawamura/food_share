# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authorization
  end
  
  def google_oauth2
    authorization
  end
  
  private
  
  def authorization
    sns_info = User.from_omniauth(request.env["omniauth.auth"])
    @user = sns_info[:user]
    #  ユーザー情報（@user）が保存済みか確認している
    if @user.persisted? 
      sign_in_and_redirect @user, event: :authentication
    else 
      @sns_id = sns_info[:sns].id
      # ユーザー情報が未登録なので、指定のpathに遷移する。
    render template: 'devise/registrations/new'
    end
  end
end



