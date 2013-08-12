class Profile < ActiveRecord::Base
  validates_uniqueness_of :user_id
  belongs_to :user
  has_many :video_pages
  
  has_attached_file :logo, :styles => { :small => "150x150>"}
    
end
