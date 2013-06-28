class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.where(:email => params[:email]).first

    if @user.present? 
        if @user.password == params[:password]
          session[:user_id] = @user.id
          redirect_to user_path(@user), notice: "Login successful!"
        else 
          flash[:alert] = "Invalid user password!"
          render action: "new"
        end
    else
      flash[:alert] = "Invalid user email!"
      render action: "new"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "User logged out!"
  end

end

# If the user is present compare the password from the login form with the password in the database
# If the password is correct redirect to user show page 
# If the password is incorrect render login form and display error message


# Render view with flash message