class CreatePresidents < ActiveRecord::Migration
  def up
    create_table :presidents do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("presidents","nominee_id")
  end

  def down
    drop_table :presidents
  end
end
