class CreateLockers < ActiveRecord::Migration[6.1]
  def change
    create_table :lockers do |t|
      t.integer :locker_number
      t.string :locker_combination
      t.belongs_to :student
    end
  end
end
