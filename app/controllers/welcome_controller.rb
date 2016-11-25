class WelcomeController < ApplicationController
#impressionist actions: [:index], unique: [:session_hash]

def index
   @parts = Part.all

        respond_to do |format|
            format.html
            format.js 
        end

end

def select_all
   @parts = Part.all

        respond_to do |format|
            format.html
            format.js 
        end

end



    def show

        respond_to do |format|
            format.js 
        end
    end


end
