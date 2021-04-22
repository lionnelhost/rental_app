class TenantsController < ApplicationController
  before_action :set_tenant, only: [:show, :edit, :update, :destroy]

  def index
    @tenants = Tenant.order(params[:sort]).page(@page).per(@per_page)
  end

  def new
    @tenant = Tenant.new
  end

  def create
    @tenant = Tenant.new(tenant_params)
    @tenant[:nationality] = params[:tenant][:contry_code]
    if @tenant.save
      flash[:success] = "Tenant successfully created"
      redirect_to tenants_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end


  def show 
    @tenant_paiements = @tenant.paiements.order(params[:sort]).page(@page).per(@per_page)
  end
  

  def edit
  end

  def update
        @tenant[:nationality] = params[:tenant][:contry_code]
      if @tenant.update(tenant_params)
        flash[:success] = "Object was successfully updated"
        redirect_to tenants_path
      else
        flash[:error] = "Something went wrong"
        render :edit
      end
  end

  def destroy
    if @tenant.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to tenants_path
    else
      flash[:error] = 'Something went wrong'
      render :index
    end
  end


  private 

  def set_tenant
    @tenant = Tenant.find(params[:id])
  end

  def tenant_params 
    params.require(:tenant)
          .permit(:sort, :firstname, :lastname, 
            :email, :phone_number, :identity_number, 
            :country_code, :profession, :date_of_birth, 
            :status, :avatar)
  end
  
  
end
