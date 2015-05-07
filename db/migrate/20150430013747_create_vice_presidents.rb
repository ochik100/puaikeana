class CreateVicePresidents < ActiveRecord::Migration
  def up
    create_table :vice_presidents do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("vice_presidents","nominee_id")
    add_foreign_key :vice_presidents, :nominees
  end

  def down
  	drop_table :vice_presidents
  end
end
