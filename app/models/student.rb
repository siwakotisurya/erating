class Student < ActiveRecord::Base
	has_many :gradings
	validates :phone_number, :presence=>true, :numericality=>true
	validates_length_of :phone_number, :presence=>true, :minimum =>10, :maximum=>10
	validates :full_name , :presence=>true
	validates :email_address , :presence=>true	
end
