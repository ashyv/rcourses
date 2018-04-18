class Student < ApplicationRecord
	has_many :assignments
	self.primary_key = 'student_id'
	has_many :student_courses
end
