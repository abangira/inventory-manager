class Request < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name           :string
    reason         :string
    due_date       :date
    request_status :integer
    requested_by   :string
    department     :integer
    timestamps
  end


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
