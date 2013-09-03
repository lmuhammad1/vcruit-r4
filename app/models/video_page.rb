require 'paperclip_processors/watermark'

class VideoPage < ActiveRecord::Base
  extend FriendlyId
  belongs_to :profile
  friendly_id :permalink
  
  has_attached_file :thumbnail, 
                    :processors => [:watermark],
                      :styles => {
                        :medium => {
                          :geometry       => "400x300>",
                          :position       => "SouthEast",
                          :watermark_path => "#{Rails.root}/public/images/watermark.png"
                        },
                        :small => "150x150>",
                      }
end
