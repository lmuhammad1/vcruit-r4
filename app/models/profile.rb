class Profile < ActiveRecord::Base
  validates_uniqueness_of :user_id
  belongs_to :user
  has_many :video_pages
  
end
