require 'spec_helper'

describe "vocable_groups/index" do
  before(:each) do
    assign(:vocable_groups, [
      stub_model(VocableGroup,
        :name => "Name"
      ),
      stub_model(VocableGroup,
        :name => "Name"
      )
    ])
  end

  it "renders a list of vocable_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
