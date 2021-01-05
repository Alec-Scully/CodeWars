class FactionsController < ApplicationController


    def index
        @factions = faction.all
    end

    def show 
        @faction = faction.find(params[:id])
    end
    


end
