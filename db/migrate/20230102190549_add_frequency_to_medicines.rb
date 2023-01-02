class AddFrequencyToMedicines < ActiveRecord::Migration[7.0]
  def change
    remove_column :medicines, :frequeny, :integer
    add_column :medicines, :frequency, :integer
  end
end
