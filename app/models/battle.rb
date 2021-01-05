class Battle < ApplicationRecord
    has_many :character_battles
    has_many :characters, through: :character_battles
end
