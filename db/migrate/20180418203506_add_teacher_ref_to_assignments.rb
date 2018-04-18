class AddTeacherRefToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :teacher, foreign_key: true
  end
end
