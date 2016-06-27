class PagesController < ApplicationController
  
  def index
  end

  def home
  end

  def profile
    #getting username 
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "Whoops! No such user!"
    end
  end

  def explore
  end
end
