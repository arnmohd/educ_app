class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :course_id
      t.integer :syllabus_id

      t.timestamps
    end
    add_index :chapters, [:course_id,:syllabus_id]
  end
end
