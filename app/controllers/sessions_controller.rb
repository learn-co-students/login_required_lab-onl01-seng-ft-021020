class SessionsController < ApplicationController
  before_action :logged_in?, only: :destroy
  before_action :valid_params?, only: :create

  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to secret_path
  end

  def destroy
    session.delete(:name)
  end
end
