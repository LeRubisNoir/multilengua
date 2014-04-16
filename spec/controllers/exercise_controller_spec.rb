require 'spec_helper'

describe ExerciseController do

  describe "GET 'type1'" do
    it "returns http success" do
      get 'type1'
      expect(response).to be_success
    end
  end

end
