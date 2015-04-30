class CreateVicePresidents < ActiveRecord::Migration
  def change
    create_table :vice_presidents do |t|

      t.timestamps null: false
    end
  end
end
