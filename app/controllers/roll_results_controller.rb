class RollResultsController < ApplicationController
  def new
  end

  def create
    @roll_result = RollResult.new(params.require(:roll_result).permit(:name, :limit_of_dice, :number_of_dices))
  
    @dice = Dice.new.diceroll
    @dice.save

    @roll_result.save
    redirect_to roll_results_path
  end

  #def show
  #  @roll_result = RollResult.find(params[:id])
  #end

  def index
    @roll_result = RollResult.all
  end

  def destroy
    @roll_result = RollResult.find(params[:id])
    @roll_result.destroy
  
    redirect_to roll_results_path
  end


end
