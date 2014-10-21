class ChangeFieldNameToTopics < ActiveRecord::Migration
  def up
    add_column :topics, :header_id, :integer
    remove_column :topics, :hd
    
    
  end

  def down
  end
end
