require 'spec_helper'

describe Score do
  before :each do
    @init_score = Score.new
    @current_score = Score.new
  end
  it "starts the exercise" do
    @init_score.score = 0
    @init_score.score.should == 0
  end

  it "adds a point to the score" do
   @current_score.score = 0
    new_score = Score.new
    new_score.score = 1
    new_score.score.should == @current_score.score + 1
  end
  it "adds no point to the score" do
    @current_score.score = 0
    new_score = Score.new
    new_score.score = 0
    new_score.score.should == @current_score.score
  end

  it "is the end of the exercise" do
    final_score = Score.new
    final_score.score = @current_score.score
    final_score.save
    final_score.should eql @current_score
  end

end
