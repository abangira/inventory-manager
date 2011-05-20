class Addmodels < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string   :name
      t.integer  :assignedto
      t.integer  :status
      t.string   :itemcode
      t.string   :serialno
      t.text     :remarks
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :items, [:category_id]

    create_table :departments do |t|
      t.string   :name
      t.string   :roomno
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :statuses do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :people do |t|
      t.string   :firstname
      t.string   :lastname
      t.string   :phone
      t.string   :email
      t.integer  :department
      t.string   :position
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :department_id
    end
    add_index :people, [:department_id]

    create_table :categories do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :items
    drop_table :departments
    drop_table :statuses
    drop_table :people
    drop_table :categories
  end
end
