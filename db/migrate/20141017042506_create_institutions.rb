class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :phone_no
      t.binary :logo

      t.timestamps
    end
  end
end
