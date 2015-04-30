class CreateLuauChairs < ActiveRecord::Migration
  def change
    create_table :luau_chairs do |t|

      t.timestamps null: false
    end
  end
end
