class CreateNominees < ActiveRecord::Migration
  def up
    create_table :nominees do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.boolean "president_candidate"
      t.boolean "vp_candidate"
      t.boolean "secretary_candidate"
      t.boolean "treasurer_candidate"
      t.boolean "marketing_candidate"
      t.boolean "fundraising_candidate"
      t.boolean "community_candidate"
      t.boolean "luau_candidate"
      t.boolean "cultural_candidate"

      t.timestamps null: false
    end
  end

  def down
    drop_table :nominees
  end
end
