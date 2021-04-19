class PaiementsController < ApplicationController 
    before_action :set_paiement, only: [:edit, :update, :destroy]
    def index 
        @paiements = Paiement.includes(:tenant, :apartment).order(params[:sort]).page(@page).per(@per_page)
    end

    def new 
        @paiement = Paiement.new
    end
    
    def create
        @paiement = Paiement.new(paiement_params)
        if @paiement.save
          flash[:success] = "Tenant successfully created"
          redirect_to paiements_path
        else
          flash[:error] = "Something went wrong"
          render :new
        end
    end
      
    
    def edit
    end
    
    def update
        if @paiement.update(paiement_params)
        flash[:success] = "Object was successfully updated"
        redirect_to paiements_path
        else
        flash[:error] = "Something went wrong"
        render :edit
        end
    end
    
    def destroy
        if @paiement.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to paiements_path
        else
            flash[:error] = 'Something went wrong'
            render :index
        end
    end
    
    
    private 
    
    def set_paiement
        @paiement = Paiement.find(params[:id])
    end
    
    def paiement_params
        params.require(:paiement).permit(:tenant_id, :apartment_id,:period, :amount)
    end
end