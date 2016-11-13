class PartsController < ApplicationController
    before_filter :authenticate, :except => [:show]
    impressionist actions: [:show]#, unique: [:session_hash]
    
    def index
        @parts = Part.all
    end
    
    def show
        @part = Part.find(params[:id])

        respond_to do |format|
            format.html 
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
            format.html {redirect_to parts_path} #, success: 'Widget was successfully created.'}
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