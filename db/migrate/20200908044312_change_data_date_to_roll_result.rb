class ChangeDataDateToRollResult < ActiveRecord::Migration[5.2]
  def change
    change_column :roll_results, :date, :string
  end
end
