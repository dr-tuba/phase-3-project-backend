class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.belongs_to :school
    end
  end
end
