class AddImageToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :picture_url, :string
  end
end
