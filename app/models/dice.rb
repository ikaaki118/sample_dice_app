class Dice < ApplicationRecord
  belongs_to :roll_result

  #乱数を1つ生成して、Diceオブジェクトのrollに入れる。引数は面数
  def tumbling(limit)

    @dice = Dice.new

    #ランダムに "1～面数" までの乱数を1つ代入する
    @dice.roll = rand(limit) + 1
  end

end
