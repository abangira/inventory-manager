class Item < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name       :string
    itemcode   :string
    serialno   :string
    remarks    :text
    timestamps
  end
  belongs_to :category
  belongs_to :status
  belongs_to :person
  validates_presence_of :name, :itemcode, :serialno

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
