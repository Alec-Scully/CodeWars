class CharacterBattlesController < ApplicationController

    def index
        @Character_Battles = Character_Battle.all
    end

    def show 
        @Character_Battle = Character_Battle.find(params[:id])
    end
    


end
