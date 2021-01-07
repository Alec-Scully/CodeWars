class Battle < ApplicationRecord
    has_many :character_battles
    has_many :characters, through: :character_battles

    def battle_choice
        user_num = rand(11)
        char_num = rand(11)

        if user_num > char_num
            1
        elsif char_num > user_num
            2
        elsif char_num == user_num
            3
        end
    end


end
