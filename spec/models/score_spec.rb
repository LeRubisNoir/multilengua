require '../spec_helper'

describe Score do
  before :each do
    @init_score = Score.new(score: 0)
    @current_score = Score.new(score: 0)
  end
  it "starts the exercise" do
    @current_score.score.should eq @init_score.score
  end

  it "adds a point to the score" do
   @current_score.score = 0
    new_score = Score.new(score: 1)
    new_score.score.should == @current_score.score + 1
  end
 
  it "adds no point to the score" do
    @current_score.score = 0
    new_score = Score.new(score: 0)
    new_score.score.should == @current_score.score
  end

  it "is the end of the exercise" do
    final_score = Score.new(score: @current_score.score)
    final_score.save
    final_score.should eql @current_score
  end
end
