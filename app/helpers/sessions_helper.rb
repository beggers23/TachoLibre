module SessionsHelper

  def authenticate!
    redirect_to root_path unless current_user
  end

  def current_user
    @current_user = Server.find session[:server_id] if session[:server_id]
  end
end
