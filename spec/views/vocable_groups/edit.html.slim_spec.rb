require 'spec_helper'

describe "vocable_groups/edit" do
  before(:each) do
    @vocable_group = assign(:vocable_group, stub_model(VocableGroup,
      :name => "MyString"
    ))
  end

  it "renders the edit vocable_group form" do
    render

    assert_select "form[action=?][method=?]", vocable_group_path(@vocable_group), "post" do
      assert_select "input#vocable_group_name[name=?]", "vocable_group[name]"
    end
  end
end
