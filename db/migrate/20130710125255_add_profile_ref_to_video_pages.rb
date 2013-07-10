class AddProfileRefToVideoPages < ActiveRecord::Migration
  def change
    add_reference :video_pages, :profile, index: true
  end
end
