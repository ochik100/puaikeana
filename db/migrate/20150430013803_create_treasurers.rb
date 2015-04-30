class CreateTreasurers < ActiveRecord::Migration
  def change
    create_table :treasurers do |t|

      t.timestamps null: false
    end
  end
end
