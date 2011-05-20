class Person < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name       :string
    phone      :string
    email      :string
    position   :string
    timestamps
  end
  belongs_to :department
  validates_presence_of :name, :email

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
