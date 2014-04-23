require 'spec_helper'

describe "vocable_groups/show" do
  before(:each) do
    @vocable_group = assign(:vocable_group, stub_model(VocableGroup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
