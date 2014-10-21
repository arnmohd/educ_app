class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :heading
      t.integer :course_id
      t.integer :syllabus_id
      t.integer :chapter_id

      t.timestamps
    end
  end
end
