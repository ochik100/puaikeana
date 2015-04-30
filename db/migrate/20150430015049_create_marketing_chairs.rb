class CreateMarketingChairs < ActiveRecord::Migration
  def change
    create_table :marketing_chairs do |t|

      t.timestamps null: false
    end
  end
end
