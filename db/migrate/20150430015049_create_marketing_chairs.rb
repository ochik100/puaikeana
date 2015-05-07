class CreateMarketingChairs < ActiveRecord::Migration
  def up
    create_table :marketing_chairs do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("marketing_chairs","nominee_id")
    add_foreign_key :marketing_chairs, :nominees
  end

  def down
  	drop_table :marketing_chairs
  end
end
