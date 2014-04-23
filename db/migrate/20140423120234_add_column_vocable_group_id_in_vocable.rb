class AddColumnVocableGroupIdInVocable < ActiveRecord::Migration
  def up
		add_column :vocables, :vocable_group_id, :integer
  end

  def down
		remove_column :vocables, :vocable_group_id
  end
end
