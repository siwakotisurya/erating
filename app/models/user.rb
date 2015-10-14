class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates_length_of :phone_number, :numericality=>{:less_than_or_equal_to=>10}
	validates_format_of :address, :with => /^[a-zA-Z\d\s]*$/,:message => "can only contain letters and numbers."
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]       
 
end
