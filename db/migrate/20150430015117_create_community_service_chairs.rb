class CreateCommunityServiceChairs < ActiveRecord::Migration
  def up
    create_table :community_service_chairs do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("community_service_chairs","nominee_id")
    add_foreign_key :community_service_chairs, :nominees
  end

  def down
  	drop_table :community_service_chairs
  end
end
