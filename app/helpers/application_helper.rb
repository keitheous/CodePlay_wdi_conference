module ApplicationHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    # converting the object to true/false
    !!current_user
  end
end
