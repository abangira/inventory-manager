class Department < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name   :string
    roomno :string
    timestamps
  end
  has_many :people

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
