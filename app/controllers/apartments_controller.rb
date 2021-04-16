class ApartmentsController < ApplicationController
    before_action :set_apartment, only: [:edit, :update, :destroy]
  
    def index
      @apartments = Apartment.all.order(params[:sort]).page(@page).per(@per_page)
    end
  
    def new
      @apartment = Apartment.new
    end
  
    def create
      @apartment = Apartment.new(apartment_params)
      if @apartment.save
        flash[:success] = "appartment successfully created"
        redirect_to apartments_path
      else
        flash[:error] = "Something went wrong"
        render :new
      end
    end
    
  
    def edit
    end
  
    def update

        if @apartment.update(apartment_params)
          flash[:success] = "Object was successfully updated"
          redirect_to apartments_path
        else
          flash[:error] = "Something went wrong"
          render :edit
        end
    end
  
    def destroy
      if @apartment.destroy
        flash[:success] = 'Object was successfully deleted.'
        redirect_to apartments_path
      else
        flash[:error] = 'Something went wrong'
        render :index
      end
    end
  
  
    private 
  
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end
  
    def apartment_params 
      params.require(:apartment).permit(:address, :nb_pieces, :areas, :rent, :caution, :description)
    end
    
    
  end
  