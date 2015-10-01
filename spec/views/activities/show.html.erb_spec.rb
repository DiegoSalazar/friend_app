require 'rails_helper'

RSpec.describe "activities/show", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :name => 1,
      :name => "MyText",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
