class Pin < ApplicationRecord
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
										:default_url => "/images/:style/missing.png" # <= you see ?

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :image, presence: true
  validates :description, presence: true

end
