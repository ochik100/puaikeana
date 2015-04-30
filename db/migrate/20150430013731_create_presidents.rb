class CreatePresidents < ActiveRecord::Migration
  def up
    create_table :presidents do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"

      t.timestamps null: false
    end
  end

  def down
    drop_table :presidents
  end
end