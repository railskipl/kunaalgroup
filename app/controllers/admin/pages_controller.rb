class Admin::PagesController < ApplicationController
  
   before_filter :authenticate_admin!, :except => []
  
  layout 'admin'
  
  def index
      @pages = Page.all
    end

    def new
      @page = Page.new
    end

    def create
      @page = Page.new(params[:page])
      if @page.save
        flash[:notice] = "Pages created successfully"
        redirect_to admin_pages_path
      else
        render :new
      end
    end
    
    def edit
      @page = Page.find(params[:id])
    end

    def update
      @page = Page.find(params[:id])
      if @page.update_attributes(params[:page])
        flash[:notice] = "Pages saved successfully"
        redirect_to admin_pages_path
      else
        render :new
      end
    end
    

    def delete
      @page = Page.find(params[:id])
     
      if @page.delete
        flash[:notice] = "Pages deleted successfully"
        redirect_to admin_pages_path
      end
      
    end
    
    
  
end
