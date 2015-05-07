class PresidentForeignKey < ActiveRecord::Migration
  def up
  	add_foreign_key :presidents, :nominees
  end

  def down
  	remove_foreign_key :presidents, :nominees
  end
end
