require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :name => 1,
        :name => "MyText",
        :description => "MyText"
      ),
      Activity.create!(
        :name => 1,
        :name => "MyText",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
