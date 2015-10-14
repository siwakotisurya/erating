class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :phone_number, :presence=>true, :numericality=>{:less_than_or_equal_to=>10}
	validates_length_of :phone_number, :presence=>true, :maximum =>10 
  has_attached_file :image
  validates :image, :presence=>true
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]       
 
end
