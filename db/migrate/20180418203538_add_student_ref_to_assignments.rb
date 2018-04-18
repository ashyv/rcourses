class AddStudentRefToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :student, foreign_key: true
  end
end
