class CreateUserCourseRelations < ActiveRecord::Migration
  def change
    create_table :user_course_relations do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
    add_index :user_course_relations, :user_id
    
  end
end
