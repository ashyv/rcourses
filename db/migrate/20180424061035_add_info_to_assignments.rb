class AddInfoToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :points, :integer
    add_column :assignments, :due_date, :string
  end
end
