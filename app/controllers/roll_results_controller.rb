class RollResultsController < ApplicationController
  def new
    @roll_result = RollResult.new
  end

  def create

    #create(POSTコマンド)で呼び出されたとき、Rollresultオブジェクトを1つ生成。フォームから名前、個数、上限を持ってくる
    @roll_result = RollResult.new(params.require(:roll_result).permit(:name, :limit_of_dice, :number_of_dices))

    #datetimeに現在時刻を代入
    #できればUTCでなく日本時刻を取得したい…
    d = Time.now
    @roll_result.date = d

    if @roll_result.save

      #Diceオブジェクトを"個数"回生成
      for num in 1..@roll_result.number_of_dices do

        @dice = @roll_result.dices.create

        #Diceモデルのtumblingメソッドを呼び出す
        @dice.roll = @dice.tumbling(@roll_result.limit_of_dice)
        @dice.save

      end


    #紐付けられているダイスの目を合計してrolls_sumに入れる
    @roll_result.rolls_sum = @roll_result.dices.all.sum(:roll)

    #紐付けられているダイスの目を配列にしてrolls_listに入れる
    @roll_result.rolls_list = @roll_result.dices.pluck(:roll)

    @roll_result.save

    end

    #showに戻る用↓
    #redirect_to @roll_result

    #indexに戻る用↓
    redirect_to roll_results_path
  end

  def show
    @roll_result = RollResult.find(params[:id])
  end

  def index
    @roll_result = RollResult.all
  end

  def destroy
    @roll_result = RollResult.find(params[:id])
    @roll_result.destroy
  
    redirect_to roll_results_path
  end

end
