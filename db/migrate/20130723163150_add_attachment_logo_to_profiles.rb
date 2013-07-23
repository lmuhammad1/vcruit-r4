class AddAttachmentLogoToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :profiles, :logo
  end
end
