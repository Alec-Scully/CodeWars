class CharacterBattlesController < ApplicationController

    def new
        @character_battle = CharacterBattle.new
    end
    
    def create
        @battle = Battle.create()
        @character_battle = CharacterBattle.create(character_id: character_battle_params[:character_id], battle_id: @battle.id)
        @character_battle = CharacterBattle.create(character_id: character_battle_params[:user_id], battle_id: @battle.id)
       
        # byebug
        redirect_to battle_path(@battle)
    end

    # private

    def character_battle_params
        params.require(:character_battle).permit(:character_id, :user_id)
    end

end
