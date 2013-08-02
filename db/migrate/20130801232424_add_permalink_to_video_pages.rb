class AddPermalinkToVideoPages < ActiveRecord::Migration
  def change
    add_column :video_pages, :permalink, :string
  end
end
