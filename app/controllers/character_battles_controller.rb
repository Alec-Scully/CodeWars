class CharacterBattlesController < ApplicationController

    def new
        @character_battle = CharacterBattle.new
        # byebug
        @user = User.find(params[:id])
    end
    
    def create
        @battle = Battle.create()
        CharacterBattle.create(character_id: character_battle_params[:character_id], battle_id: @battle.id)
        CharacterBattle.create(character_id: character_battle_params[:user_id], battle_id: @battle.id)
        
        result = @battle.battle_choice
        if result == 1
            #user win
            @battle.characters.first.character_win
            @battle.characters.second.character_loss
            # @battle.winner = @battle.characters.first.id
            #add who won into the migration for battle (id or name)
        elsif result == 2
            #char win
            @battle.characters.first.character_loss
            @battle.characters.second.character_win
            # @battle.winner = @battle.characters.second.id
        else
            #tie
        end

        redirect_to battle_path(@battle)
    end

    # private

    def character_battle_params
        params.require(:character_battle).permit(:character_id, :user_id)
    end

end
