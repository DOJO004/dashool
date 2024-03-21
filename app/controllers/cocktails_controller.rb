class CocktailsController < ApplicationController

    def show
      
    end
    
    def new

    end

    def create
      
    end

    def edit

    end

    def update
        
    end

    def destroy
      
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:name, :introduce, :type_of, :main_image)
    end
end
