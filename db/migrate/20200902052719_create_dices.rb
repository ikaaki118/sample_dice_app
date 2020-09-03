class CreateDices < ActiveRecord::Migration[5.2]
  def change
    create_table :dices do |t|
      t.integer :roll

      t.timestamps
    end
  end
end
