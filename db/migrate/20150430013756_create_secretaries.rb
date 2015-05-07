class CreateSecretaries < ActiveRecord::Migration
  def up
    create_table :secretaries do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("secretaries", "nominee_id")
    add_foreign_key :secretaries, :nominees
  end

  def down
  	drop_table :secretaries
  end
end
