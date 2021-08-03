class CreateMusic < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.string :instrumentation
      t.string :genre
      t.string :title
      t.integer :difficulty_level
      t.string :publisher
      t.belongs_to :school
    end
  end
end
