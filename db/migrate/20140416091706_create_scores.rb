class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :score
      t.integer :exo_id
      t.text :session

      t.timestamps
    end
  end
end
