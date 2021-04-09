class SessionController < ApplicationController
   def new
    @user = User.new
   end

   def create
    user = User.new
    if user.save && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to items_path
    else
      flash[:message]= "There is no account to match this info.Sign up first"
      redirect_to "/login"
    end

   end

   def destroy
     session.destroy[:user_id]
     flash[:message]="You have successfully logged out."
     redirect_to items_path
   end


end