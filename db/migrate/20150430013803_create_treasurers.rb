class CreateTreasurers < ActiveRecord::Migration
  def up
    create_table :treasurers do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("treasurers","nominee_id")
    add_foreign_key :treasurers, :nominees
  end

  def down
  	drop_table :treasurers
  end
end
