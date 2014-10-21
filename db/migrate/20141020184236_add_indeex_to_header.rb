class AddIndeexToHeader < ActiveRecord::Migration
  def change
    add_index :headers, [:course_id,:syllabus_id, :chapter_id]
  end
end
