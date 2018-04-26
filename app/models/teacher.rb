class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :assignments
	has_attached_file :avatar, :path => ":rails_root/public/system/avatars/:id/:style/:filename", :url => "/system/:attachment/:id/:style/:filename", style: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", validate_media_type: false
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
