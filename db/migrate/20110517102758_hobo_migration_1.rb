class HoboMigration1 < ActiveRecord::Migration
  def self.up
    add_column :items, :status_id, :integer
    add_column :items, :person_id, :integer
    remove_column :items, :assignedto
    remove_column :items, :status

    add_index :items, [:status_id]
    add_index :items, [:person_id]
  end

  def self.down
    remove_column :items, :status_id
    remove_column :items, :person_id
    add_column :items, :assignedto, :integer
    add_column :items, :status, :integer

    remove_index :items, :name => :index_items_on_status_id rescue ActiveRecord::StatementInvalid
    remove_index :items, :name => :index_items_on_person_id rescue ActiveRecord::StatementInvalid
  end
end
