class HomeController < ApplicationController
  before_action :get_user
  before_action :check_login
  include HomeHelper

  def index
    if !current_user
      redirect_to new_user_session_path
    else
      shared_places = @user.shares
      received_places = Share.where(receipient_id: current_user.id)
      @shares = get_user_places(current_user.id)
    end
  end

  def all_users
    @users = User.where.not(id: current_user.id)
  end

  private
  def get_user
    @user = current_user
  end
end
