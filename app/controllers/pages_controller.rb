class PagesController < ApplicationController
  def login
    if params[:login][:username] == nil
      username = password = ""
    else
      username = params[:login][:username]
      password = params[:login][:password]
    end
    conn = ActiveRecord::Base.connection
    user_id = conn.select_value("select getID('" + username + "','" + password + "')").to_i
    if user_id > 0
      cookies.signed[:uid] = user_id
      redirect_to :controller => "user", :action => "index"
    end
  end
end
