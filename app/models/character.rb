class Character < ApplicationRecord
    belongs_to :faction
    belongs_to :user
    has_many :character_battles
    has_many :battles, through: :character_battles

    validates :name, presence: true, uniqueness: true
    validates :description, presence: {message: " and/or background can't be blank"}


    def character_loss
        new_battles_lost = self.battles_lost + 1
        self.update(battles_lost: new_battles_lost)
    end

    def character_win
        new_battles_won = self.battles_won + 1
        self.update(battles_won: new_battles_won)
    end

    
end
