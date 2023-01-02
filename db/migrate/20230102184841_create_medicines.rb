class CreateMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :dosage
      t.integer :frequeny

      t.timestamps
    end
  end
end
