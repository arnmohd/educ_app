class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :heading
      t.text :content
      t.integer :course_id
      t.integer :syllabus_id
      t.integer :chapter_id

      t.timestamps
    end
    add_index :topics, [:course_id,:syllabus_id, :chapter_id]
  end
end
