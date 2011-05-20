class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :people, :department, :integer
    remove_column :people, :department_id

    remove_index :people, :name => :index_people_on_department_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    remove_column :people, :department
    add_column :people, :department_id, :integer

    add_index :people, [:department_id]
  end
end
