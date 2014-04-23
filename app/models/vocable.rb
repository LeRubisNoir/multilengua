class Vocable < ActiveRecord::Base
  attr_accessible :english, :german, :sweden
  belongs_to :vocable_group
end
