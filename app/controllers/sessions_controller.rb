class SessionsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :require_login
  skip_before_action :require_login, only: [:create]


  def new
      # nothing to do here!
  end

  def create
      if(params.empty? || params[:name].nil? || params[:name].empty?)
        redirect_to login_path
      else
        session[:name] = params[:name]
     
        redirect_to '/secrets/show'
      end



      
 
  end

  def destroy
    session.delete :name
  end

  private
  def require_login
    redirect_to login_path unless session.include? :name
    
  end

end
