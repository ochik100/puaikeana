class CreateLuauChairs < ActiveRecord::Migration
  def change
    create_table :luau_chairs do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
   	  add_index("luau_chairs","nominee_id")
      add_foreign_key :luau_chairs, :nominees
  end
end
