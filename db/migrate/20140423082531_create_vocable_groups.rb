class CreateVocableGroups < ActiveRecord::Migration
  def change
    create_table :vocable_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
