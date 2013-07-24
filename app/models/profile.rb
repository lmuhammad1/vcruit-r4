class Profile < ActiveRecord::Base
  validates_uniqueness_of :user_id
  belongs_to :user
  has_many :video_pages
  has_attached_file :logo, :styles => { :small => "150x150>"},
    :url => "/assets/company_logos/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/company_logos/:id/:style/:basename.:extension"
  
end
