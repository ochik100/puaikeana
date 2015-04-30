class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|

      t.timestamps null: false
    end
  end
end
