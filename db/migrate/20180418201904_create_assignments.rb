class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
