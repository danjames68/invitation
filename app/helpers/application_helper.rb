module ApplicationHelper
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def full_name(owner)
    owner.title + ' ' + owner.name + ' ' + owner.surname
  end
  
  def make_date(date)
    date.strftime("%d %B - %Y")
  end
end
