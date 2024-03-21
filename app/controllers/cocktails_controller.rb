class CocktailsController < ApplicationController

    def show
      
    end
    
    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)

        if @cocktail.save
            redirect_to root_path
        else
            render :new
        end
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
