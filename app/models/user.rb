class User < ApplicationRecord
  has_secure_password
  has_many :characters

  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :password_digest, length: {minimum: 5}

  def user_characters
    
    Character.all.select do | character | 
        self.id == character.user_id
        # byebug
    end
    # [Character.first, Character.second]
  end

  def user_loss
    new_battles_lost = self.battles_lost + 1
    self.update(battles_lost: new_battles_lost)
  end

  def user_win
    new_battles_won = self.battles_won + 1
    self.update(battles_won: new_battles_won)
  end
end
