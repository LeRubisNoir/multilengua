class CreateScores < ActiveRecord::Migration
  def change

  	remove_column :scores, :ip
  	remove_column :scores, :note

  	add_column :scores, :score, :integer
  	add_column :scores, :session, :string

  end
end
