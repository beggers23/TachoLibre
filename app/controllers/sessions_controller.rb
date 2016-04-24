class SessionsController < ApplicationController

  def create
    username = params[:name]
    password = params[:password]

    server = Server.find_by name: username

    if server && server.authenticate(password)

      if server.admin != true && server.chef != true
        session[:server_id] = server.id
        redirect_to profile_path

      elsif server.admin != true && server.chef
        session[:server_id] = server.id
        redirect_to chefs_path

      elsif server.admin
        redirect_to admins_path
      end
      
    else
      redirect_to root_path
    end

  end

  def destroy
    session[:server_id] = nil
    redirect_to root_path
  end

end
