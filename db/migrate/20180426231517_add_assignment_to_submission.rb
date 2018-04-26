class AddAssignmentToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :assignment_id, :integer
   
  end
end
