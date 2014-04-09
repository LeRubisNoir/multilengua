require 'spec_helper'

describe "vocables/index" do
  before(:each) do
    assign(:vocables, [
      stub_model(Vocable,
        :english => "English",
        :german => "German",
        :sweden => "Sweden"
      ),
      stub_model(Vocable,
        :english => "English",
        :german => "German",
        :sweden => "Sweden"
      )
    ])
  end

  it "renders a list of vocables" do
    render
    assert_select "tr>td", :text => "English".to_s, :count => 2
    assert_select "tr>td", :text => "German".to_s, :count => 2
    assert_select "tr>td", :text => "Sweden".to_s, :count => 2
  end
end
