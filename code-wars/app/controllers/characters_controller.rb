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

        if @character.valid?
            @character.save
            redirect_to character_path(@character)
        else
            flash[:errors] = @character.errors.full_messages
            redirect_to new_character_path
        end
    end

    def destroy
        @character = Character.find_by(id: params[:id])
        @character.destroy
        redirect_to characters_path
    end

    private

    def character_params
        params.require(:character).permit(:name, :species, :description, :faction_id, :classification, :status, :battles_won, :battles_lost, :user_id)
    end
        
    # t.string :name
    # t.string :species
    # t.string :description
    # t.string :faction_id
    # t.string :classification
end
