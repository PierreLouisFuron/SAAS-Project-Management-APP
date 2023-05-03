class HomeController < ApplicationController
  def index
    @user = current_user
    # @users = current_tenant.users
    # @users = Array(current_tenant&.users)
  end
end
