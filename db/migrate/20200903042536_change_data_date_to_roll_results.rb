class ChangeDataDateToRollResults < ActiveRecord::Migration[5.2]
  def change
    change_column :roll_results, :date, :datetime
  end
end
