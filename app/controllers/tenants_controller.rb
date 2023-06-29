class TenantsController < ApplicationController
    before_action :set_temant

    def edit
    end

    def update
    end

    def change
    end

    private

    def set_tenant
        @tenant = Tenant.find(Tenant.current_tenant_id)
    end

    def tenant_params
        params.require(:tenant).permit(:name, :plan, :token)
    end
end