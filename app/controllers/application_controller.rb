class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
 include SessionsHelper 
 before_action :authenticate


 private

 def authenticate
 return if controller_name == "pages"
 if !logged_in?
 flash[:alert] = "Must be logged in!"
 redirect_to root_path
 end
 end

  
  
  private
def set_user
   @user = User.find(params[:id])
    if @user == current_user || current_user.admin?
      return @user
    else
      redirect_to root_path
    end
end
 
  # protected
  # def authorize
  #   unless logged_in?
  #   redirect_to login_path, notice: "Please log in"
  #   end
  # end
  
  
end
