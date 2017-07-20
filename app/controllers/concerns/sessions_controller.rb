class SessionsController  < ApplicationController
#new
  #delete
  def destroy
    session.clear
    redirect_to boards_path
  end
end
