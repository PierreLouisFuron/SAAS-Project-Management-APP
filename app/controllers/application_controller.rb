class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def current_tenant
        @current_tenant ||= session[:tenant_id] ||= current_user.tenants.first
    end
    helper_method :current_tenant
end
