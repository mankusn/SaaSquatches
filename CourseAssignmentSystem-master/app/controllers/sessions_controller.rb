class SessionsController < ApplicationController
def new
end

  def create 
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      prof_id = User.where(:id=>@user).select(:faculty_id).take.faculty_id.to_s
      permission = Faculty.where(:id=>prof_id).select(:permission).take.permission.to_s
      session[:permission] = permission

      
      redirect_to '/'
      

      
    else
      redirect_to '/login'
    end
  end

    #Logout
    def destroy
     session[:user_id] = nil
     redirect_to '/'
    end
end
