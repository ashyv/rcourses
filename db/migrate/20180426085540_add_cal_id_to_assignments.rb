class AddCalIdToAssignments < ActiveRecord::Migration[5.1]
  def change
  	add_column :assignments, :cal_id, :integer
  end
end
