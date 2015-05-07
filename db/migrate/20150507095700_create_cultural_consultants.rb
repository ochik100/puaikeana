class CreateCulturalConsultants < ActiveRecord::Migration
  def up
    create_table :cultural_consultants do |t|
      t.integer "nominee_id"

      t.timestamps null: false
    end
    add_index("cultural_consultants","nominee_id")
    add_foreign_key :cultural_consultants, :nominees
  end

  def down
  end
end
