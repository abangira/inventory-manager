class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :people, :name, :string
    add_column :people, :department_id, :integer
    remove_column :people, :lastname
    remove_column :people, :firstname

    add_index :people, [:department_id]
  end

  def self.down
    remove_column :people, :name
    remove_column :people, :department_id
    add_column :people, :lastname, :string
    add_column :people, :firstname, :string

    remove_index :people, :name => :index_people_on_department_id rescue ActiveRecord::StatementInvalid
  end
end
