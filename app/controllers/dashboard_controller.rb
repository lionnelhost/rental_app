class DashboardController < ApplicationController
    def index
      @tenants = Tenant.all.count
      @apartments = Apartment.all.count
    end
end