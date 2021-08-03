class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :grade_level
      t.belongs_to :school
      t.belongs_to :teacher
    end
  end
end
