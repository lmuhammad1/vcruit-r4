class AddAttachmentThumbnailToVideoPages < ActiveRecord::Migration
  def self.up
    change_table :video_pages do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    drop_attached_file :video_pages, :thumbnail
  end
end
