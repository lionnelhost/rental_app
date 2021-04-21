class ProfileController < ApplicationController
    before_action :set_profile
    
    def update 
        respond_to do |format|
            if @user.update(profile_params)
              format.html { redirect_to user_profile_path, notice: 'User  was successfully updated.' }
              format.json { render :edit, status: :created, location: @user }
            else
              format.html { render :edit }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def edit 
        @tenants = Tenant.count 
        @apartments = Apartment.count 
        @paiements = Paiement.count
    end

    private 

    def set_profile 
        @user = User.find(params[:id])
    end

    def profile_params
        params.require(:user).permit(:firstname, :lastname, :phone_number, :address, :avatar)
    end
end