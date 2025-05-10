class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.latitude && current_user.longitude
      @nearby_items = Item.near([current_user.latitude, current_user.longitude], 25)
    else
      @nearby_items = Item.all
    end
  end
end

