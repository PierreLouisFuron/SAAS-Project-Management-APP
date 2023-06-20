class HomeController < ApplicationController
  def index
    if current_user
      @user = current_user
      @tenant = current_tenant
      # @users = Array(current_tenant&.users)

      params[:tenant_id] = current_user.tenants.first.id
    end
  end
end
