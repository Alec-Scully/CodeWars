class CharactersController < ApplicationController

    def index
        @characters = Character.all
    end

    def show 
        @character = Character.find(params[:id])
    end
    
    def new
        @character = Character.new
    end
    
    def create
        @character = Character.create(character_params)
        @character.battles_won = 0
        @character.battles_lost = 0
        redirect_to character_path(@character)
    end

    def destroy
        @character = Character.find_by(id: params[:id])
        @charater.destroy
        redirect_to character_path
    end

    private

    def character_params
        params.require(:character).permit(:name, :species, :description, :faction_id, :classification, :status, :battles_won, :battles_lost)
    end
        
    # t.string :name
    # t.string :species
    # t.string :description
    # t.string :faction_id
    # t.string :classification
end
