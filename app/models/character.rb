class Character < ApplicationRecord
    belongs_to :faction
    has_many :character_battles
    has_many :battles, through: :character_battles
end
