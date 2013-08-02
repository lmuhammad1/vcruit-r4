class VideoPage < ActiveRecord::Base
  belongs_to :profile
  before_save :make_it_permalink
  extend FriendlyId
  friendly_id :permalink
  
  def make_it_permalink
    # this can create permalink with random 8 digit alphanumeric
    self.permalink = SecureRandom.urlsafe_base64(8)
  end
end
