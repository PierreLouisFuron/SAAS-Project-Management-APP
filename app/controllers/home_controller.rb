class HomeController < ApplicationController
  def index
    if current_user
      @user = current_user
      @tenant = current_tenant
      @projects = Project.by_plan_and_tenant(@tenant.id)
      
      # @users = Array(current_tenant&.users)

      # params[:tenant_id] = current_user.tenants.first.id
      params[:tenant_id] = @tenant.id
    end
  end
end
