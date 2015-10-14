class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :phone_number, :presence=>true, :numericality=>true
	validates_length_of :phone_number, :presence=>true, :minimum =>10, :maximum=>10 
  has_attached_file :image
  validates :image, :presence=>true
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]       
 
end
