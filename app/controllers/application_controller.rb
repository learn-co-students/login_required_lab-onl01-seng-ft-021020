class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def valid_params?
    redirect_to root_path if params[:name].blank? || params[:name].nil?
  end

  def logged_in?
    redirect_to root_path if current_user.blank? || current_user.nil?
  end
end
