class Student < ApplicationRecord
	has_many :assignments
	has_many :student_courses
	has_many :courses, :through => :student_courses
end
