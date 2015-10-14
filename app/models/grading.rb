class Grading < ActiveRecord::Base
	validates :number, :presence=>true, :numericality=>{:less_than_or_equal_to=>10}
	validates_length_of :number, :minimum => 1, :maximum =>10 
	belongs_to :student
end
