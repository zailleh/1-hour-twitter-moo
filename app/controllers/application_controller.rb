class ApplicationController < ActionController::Base
  before_action :check_login


  private
    def check_login
      @current_user = User.find_by(:id => session[:user_id]) if is_logged_in
    end

    def is_logged_in
      session[:user_id].present?
    end

    def redirect_if_not_signed_in
      redirect_to login_path unless is_logged_in
    end
end
