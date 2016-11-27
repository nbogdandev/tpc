class PartsController < ApplicationController
    before_filter :authenticate, :except => [:show]
    impressionist actions: [:show]#, unique: [:session_hash]
    
    def index
        @parts = Part.all
    end
    
    def show
        if Part.where(:id => params[:id]).present? then
            @part = Part.find(params[:id])
        end

        respond_to do |format|
            format.html {redirect_to root_path}
            format.js 
        end
    end
    
    def destroy

    @part = Part.find(params[:id])
    @part.destroy
    
        respond_to do |format|
            format.html {redirect_to parts_path}
            format.js 
        end
    end
    
    def update
    
    if params[:part]
      part_params = params[:part].permit(:picture, :group, :name, :description, :price, :shop_url)
    else 
      if params
        part_params = params.permit(:picture, :group, :name, :description, :price, :shop_url)
      end
    end
    
    @part = Part.find(params[:id])
    @part.update(part_params)

        respond_to do |format|
            format.html {redirect_to parts_path}
            format.js
        end
    end

    
    def create
        Part.create(part_params)
  
        @parts = Part.all    
    
        respond_to do |format|
            format.html {redirect_to parts_path}
            format.js
        end
    end

    private
    def part_params
        # Use strong_parameters for attribute whitelisting
        # Be sure to update your create() and update() controller methods.

        params.require(:part).permit(:picture, :group, :name, :description, :price, :shop_url)
    end



end