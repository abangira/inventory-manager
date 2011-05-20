class HoboMigration6 < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string   :name
      t.string   :reason
      t.date     :due_date
      t.integer  :request_status
      t.string   :requested_by
      t.integer  :department
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :requests
  end
end
