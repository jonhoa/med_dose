class AddUseridMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :user_id, :integer
  end
end
