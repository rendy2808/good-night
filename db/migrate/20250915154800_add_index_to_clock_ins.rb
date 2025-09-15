class AddIndexToClockIns < ActiveRecord::Migration[8.0]
  def change
    add_index :clock_ins, :user_id
  end
end
