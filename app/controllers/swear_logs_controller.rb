class SwearLogsController < ApplicationController

  def swear_test
  end

  def log_swear
    @swear = params[:swear]
    @user  = current_user
    binding.pry
    @logged_swear          = SwearLog.new
    @logged_swear.user_id  = @user.id
    @logged_swear.swear_id = SwearLibrary.find_by_swear(@swear).id
    @logged_swear.swear_cost_id = 5
    @logged_swear.save

  end

end