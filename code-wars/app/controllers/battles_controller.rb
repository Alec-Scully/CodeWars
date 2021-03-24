class BattlesController < ApplicationController

    def index
        @battles = Battle.all
    end

    def show 
        @battle = Battle.find(params[:id])
        
        Character.all.each do | character | 
            if @battle.winner_id == character.id 
                @winner = character 
            end 
        end 
        
        Character.all.each do | character | 
            if @battle.loser_id == character.id 
                @loser = character 
            end 
        end 
    end
    

end
