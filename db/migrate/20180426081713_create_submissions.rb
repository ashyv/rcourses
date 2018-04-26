class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
