require 'spec_helper'

describe "vocables/show" do
  before(:each) do
    @vocable = assign(:vocable, stub_model(Vocable,
      :english => "English",
      :german => "German",
      :sweden => "Sweden"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/English/)
    expect(rendered).to match(/German/)
    expect(rendered).to match(/Sweden/)
  end
end
