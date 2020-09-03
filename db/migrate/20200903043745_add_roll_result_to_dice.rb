class AddRollResultToDice < ActiveRecord::Migration[5.2]
  def change
    add_reference :dices, :roll_result, foreign_key: true
  end
end
