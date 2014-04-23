require 'spec_helper'

describe "vocable_groups/new" do
  before(:each) do
    assign(:vocable_group, stub_model(VocableGroup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new vocable_group form" do
    render

    assert_select "form[action=?][method=?]", vocable_groups_path, "post" do
      assert_select "input#vocable_group_name[name=?]", "vocable_group[name]"
    end
  end
end
