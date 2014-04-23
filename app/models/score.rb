class Score < ActiveRecord::Base
  attr_accessible :exo_id, :score, :session, :user_id
end
