class RollResult < ApplicationRecord
  has_many :dices

  validates :name, presence: true
  validates :limit_of_dice, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..1000 }
  validates :number_of_dices, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..100 }
end
