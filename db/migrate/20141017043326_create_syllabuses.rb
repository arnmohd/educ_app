class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end
    add_index :syllabuses, :course_id
  end
end
