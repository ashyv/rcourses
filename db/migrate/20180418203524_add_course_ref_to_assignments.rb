class AddCourseRefToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :course, foreign_key: true
  end
end
