class RollResult < ApplicationRecord
  has_many :dices

  validates :name, presence: true
  validates :limit_of_dice, presence: true, numericality: { only_integer: true }
  validates :number_of_dices, presence: true, numericality: { only_integer: true }
end
