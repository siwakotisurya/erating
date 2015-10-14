class Student < ActiveRecord::Base
	has_many :gradings
	validates :phone_number, :presence=>true, :numericality=>{:less_than_or_equal_to=>10}
	validates_length_of :phone_number, :presence=>true, :maximum =>10 
	validates :full_name , :presence=>true
end
