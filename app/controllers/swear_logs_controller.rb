class SwearLogsController < ApplicationController

  def swear_test
  end

  def log_swear
    @swear = params[:swear]
    @user  = current_user

    @logged_swear          = SwearLog.new
    @logged_swear.user_id  = @user.id
    @logged_swear.swear_id = SwearLibrary.where({"swear" => @swear})

  end

end