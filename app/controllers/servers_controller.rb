class ServersController < ApplicationController
  before_action :authenticate!, only: :profile


  def login

  end

  def profile
    authenticate!
    @server = current_user
    @tables = Table.where server_id: @server.id
  end
end
