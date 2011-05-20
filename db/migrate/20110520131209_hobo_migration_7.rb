class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string   :name
      t.string   :description
      t.string   :reported_by
      t.string   :urgency
      t.boolean  :resolved
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :problems
  end
end
