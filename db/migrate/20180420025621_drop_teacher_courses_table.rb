class DropTeacherCoursesTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :teacher_courses
  end
end
