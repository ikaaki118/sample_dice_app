class Dice < ApplicationRecord
  belongs_to :roll_result

  def singlroll
#    @dice = @dice{:roll = 1}
    @dice.save
  end

  def diceroll
    @dice = Dice.new
  #  @roll_result = Rollresult.find(params[:roll_result_id])
    @dice = @dice.singlroll
  end


end
