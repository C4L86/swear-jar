class SwearLogsController < ApplicationController

  def log_swear
    user_swear = SwearLibrary.swear_check(params[:swear])
    @user      = current_user
    
    user_swear.each do |swear|
      @logged_swear          = SwearLog.new
      @logged_swear.user_id  = @user.id
      @logged_swear.swear_id = SwearLibrary.find_by_swear(swear).id
      @logged_swear.swear_cost_id = 5
      @logged_swear.save
    end
  end

end