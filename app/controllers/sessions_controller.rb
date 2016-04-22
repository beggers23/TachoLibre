class SessionsController < ApplicationController

  def create
    username = params[:name]
    password = params[:password]

    server = Server.find_by name: username

    if server && server.authenticate(password)
      session[:server_id] = server.id
      redirect_to profile_path
    else
      redirect_to root_path
    end

  end

  def destroy
    session[:server_id] = nil
    redirect_to root_path
  end
end
