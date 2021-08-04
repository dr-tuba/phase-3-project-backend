class ChangeMusicsDifficultyToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :musics, :difficulty_level, :float
  end
end
