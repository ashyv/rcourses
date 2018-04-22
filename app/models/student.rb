class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :assignments
	self.primary_key = 'student_id'
	has_many :student_courses
	# validates_uniqueness_of :student_id
end
