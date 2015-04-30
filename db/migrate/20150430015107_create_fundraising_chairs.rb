class CreateFundraisingChairs < ActiveRecord::Migration
  def change
    create_table :fundraising_chairs do |t|

      t.timestamps null: false
    end
  end
end
