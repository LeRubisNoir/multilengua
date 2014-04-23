class Vocable < ActiveRecord::Base
  belongs_to :vocable_group
  attr_accessible :english, :german, :sweden, :vocable_group_id
end
