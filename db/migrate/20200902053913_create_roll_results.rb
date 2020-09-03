class CreateRollResults < ActiveRecord::Migration[5.2]
  def change
    create_table :roll_results do |t|
      t.string :name
      t.string :date
      t.integer :number_of_dices
      t.integer :limit_of_dice
      t.string :rolls_list
      t.integer :rolls_sum
      t.string :result_message

      t.timestamps
    end
  end
end
