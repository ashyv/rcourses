class Teacher < ApplicationRecord
	has_many :assignments
	has_many :teacher_courses
end
