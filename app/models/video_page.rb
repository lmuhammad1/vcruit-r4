class VideoPage < ActiveRecord::Base
  extend FriendlyId
  belongs_to :profile
  friendly_id :permalink
end
