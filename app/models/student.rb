class Student < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage/
# Validate filename
	validates_attachment_file_name :avatar, matches: [/png\z/, /jpe?g\z/]
	validates :name, presence: true
	belongs_to :level
end
