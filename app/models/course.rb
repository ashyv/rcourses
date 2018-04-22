class Course < ApplicationRecord
	has_many :assignments
	has_many :student_courses
	has_many :students, :through => :student_courses
	belongs_to :teacher, optional: true #"teacher course must exist"
end
