class CreateFundraisingChairs < ActiveRecord::Migration
  def change
    create_table :fundraising_chairs do |t|
 	  t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("fundraising_chairs","nominee_id")
    add_foreign_key :fundraising_chairs, :nominees
  end
end
