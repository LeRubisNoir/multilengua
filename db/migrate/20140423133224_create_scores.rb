class CreateScores < ActiveRecord::Migration
  def change 
    create_table "scores", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "score"
    t.string   "session"
    end
  end
end
