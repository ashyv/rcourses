class Student < ApplicationRecord
	has_many :assignments
	has_many :courses
end
