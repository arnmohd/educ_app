class AddHeadingIdtoTopic < ActiveRecord::Migration
  def up
    add_column :topics, :hd, :integer
    add_index :topics, [:course_id,:syllabus_id, :chapter_id, :hd]
    remove_column :topics, :heading
    remove_index :topics, [:course_id,:syllabus_id, :chapter_id ]
  end

  def down
  end
end
