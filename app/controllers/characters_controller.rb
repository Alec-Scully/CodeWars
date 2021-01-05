class CharactersController < ApplicationController

    def index
        @Characters = Character.all
    end

    def show 
        @Character = Character.find(params[:id])
    end
    



end
