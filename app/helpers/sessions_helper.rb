module SessionsHelper

  # Logs the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the id of the user by reference if any to avoid exception
  def current_user
    User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end
