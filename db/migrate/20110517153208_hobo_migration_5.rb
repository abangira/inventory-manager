class HoboMigration5 < ActiveRecord::Migration
  def self.up
    remove_column :people, :department
  end

  def self.down
    add_column :people, :department, :integer
  end
end
