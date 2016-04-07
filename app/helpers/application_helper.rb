module ApplicationHelper
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def full_name(owner)
    owner.title + ' ' + owner.name + ' ' + owner.surname
  end
  
end
