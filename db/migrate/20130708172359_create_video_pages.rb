class CreateVideoPages < ActiveRecord::Migration
  def change
    create_table :video_pages do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
