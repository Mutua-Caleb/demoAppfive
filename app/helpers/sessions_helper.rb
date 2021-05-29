module SessionsHelper
  # logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  #Returns the current logged in user (if any)
  def current_user
    if session[:user_id] # if there is a session id, the current user is the one whose session id is the same as the user id 
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  #returns true if the user is logged in, false otherwise
  # a user is loggged in if there is a current user in the session i.e if the current_user is not nil.
  # checking for this requires the use of the 'not' operator, written usinf an exclamation point !( read as bang)
  def logged_in?
    !current_user.nil?
  end

  # logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end 
