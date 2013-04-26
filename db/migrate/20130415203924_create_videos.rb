class CreateVideos < ActiveRecord::Migration
  def up
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.string :url
    end
  end
  def down
    drop_table :videos
  end
end
