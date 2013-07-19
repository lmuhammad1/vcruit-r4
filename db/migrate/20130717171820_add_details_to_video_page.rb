class AddDetailsToVideoPage < ActiveRecord::Migration
  def change
    add_column :video_pages, :video_title, :string
    add_column :video_pages, :video_code, :string
    add_column :video_pages, :job_description_title, :string
    add_column :video_pages, :job_description, :text
  end
end
