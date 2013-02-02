class Admin::LatestinformationsController < ApplicationController


before_filter :authenticate_admin!, :except => []
  
  layout 'admin'
  
  def index
      @latestinformations = Latestinformation.all
    end

    def new
      @latestinformation = Latestinformation.new
    end

    def create
     @latestinformation = Latestinformation.new(params[:latestinformation])
      if @latestinformation.save
        flash[:notice] = "Latestinformation created successfully"
        redirect_to admin_latestinformations_path
      else
        render :new
      end
    end
    
    def edit
      @latestinformation = Latestinformation.find(params[:id])
    end

    def update
      @latestinformation = Latestinformation.find(params[:id])
      if @latestinformation.update_attributes(params[:latestinformation])
        flash[:notice] = "Latestinformation saved successfully"
        redirect_to admin_latestinformations_path
      else
        render :new
      end
    end
    

    def delete
      @latestinformation = Latestinformation.find(params[:id])
     
      if @latestinformation.delete
        flash[:notice] = "Latestinformation deleted successfully"
        redirect_to admin_latestinformations_path
      end
      
    end
    
   
end
