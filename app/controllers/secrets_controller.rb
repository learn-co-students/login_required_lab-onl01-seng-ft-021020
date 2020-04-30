class SecretsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :require_login

 
  def show
    session[:name]
    
  end
 
  def index
  end
 
  def create
   
  end
 
  private
 
  def require_login
    redirect_to login_path unless session.include? :name
    
  end

end
