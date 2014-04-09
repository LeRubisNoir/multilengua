require 'spec_helper'

describe "vocables/edit" do
  before(:each) do
    @vocable = assign(:vocable, stub_model(Vocable,
      :english => "MyString",
      :german => "MyString",
      :sweden => "MyString"
    ))
  end

  it "renders the edit vocable form" do
    render

    assert_select "form[action=?][method=?]", vocable_path(@vocable), "post" do
      assert_select "input#vocable_english[name=?]", "vocable[english]"
      assert_select "input#vocable_german[name=?]", "vocable[german]"
      assert_select "input#vocable_sweden[name=?]", "vocable[sweden]"
    end
  end
end
