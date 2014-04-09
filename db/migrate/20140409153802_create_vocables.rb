class CreateVocables < ActiveRecord::Migration
  def change
    create_table :vocables do |t|
      t.string :english
      t.string :german
      t.string :sweden

      t.timestamps
    end
  end
end
