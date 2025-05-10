class UsersController < ApplicationController
  before_action :authenticate_user!

  def update_location
    current_user.update(latitude: params[:latitude], longitude: params[:longitude])
    head :ok
  end
end
