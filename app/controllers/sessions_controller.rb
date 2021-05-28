class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate[params[:session][:password]]
      # log the user in and redirect to the user's show page
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # flash now makes sure the flash message is only rendered in the current page and not on any other page
      #create an error message
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
