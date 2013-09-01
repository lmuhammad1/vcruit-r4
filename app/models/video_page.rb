class VideoPage < ActiveRecord::Base
  extend FriendlyId
  belongs_to :profile
  friendly_id :permalink
  
  has_attached_file :thumbnail, :styles => { :small => "150x150>", :medium => "300x300>" }
end
