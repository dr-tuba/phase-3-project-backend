class CreateInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :instruments do |t|
      t.string :instrument_name
      t.string :brand
      t.string :model
      t.integer :serial_number
      t.string :condition
      t.belongs_to :school
      t.belongs_to :student
    end
  end
end
