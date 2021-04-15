class DashboardController < ApplicationController
    def index
      @tenants = Tenant.all.count
    end
end