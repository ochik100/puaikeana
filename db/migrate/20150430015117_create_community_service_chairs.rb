class CreateCommunityServiceChairs < ActiveRecord::Migration
  def change
    create_table :community_service_chairs do |t|

      t.timestamps null: false
    end
  end
end
