class VocableGroup < ActiveRecord::Base
  attr_accessible :name
  has_many :vocables
end
