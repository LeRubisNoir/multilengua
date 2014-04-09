require 'spec_helper'

describe "vocables/new" do
  before(:each) do
    assign(:vocable, stub_model(Vocable,
      :english => "MyString",
      :german => "MyString",
      :sweden => "MyString"
    ).as_new_record)
  end

  it "renders new vocable form" do
    render

    assert_select "form[action=?][method=?]", vocables_path, "post" do
      assert_select "input#vocable_english[name=?]", "vocable[english]"
      assert_select "input#vocable_german[name=?]", "vocable[german]"
      assert_select "input#vocable_sweden[name=?]", "vocable[sweden]"
    end
  end
end
