require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :name => "Name",
        :locatable_id => 1,
        :locatable_type => "Locatable Type"
      ),
      Location.create!(
        :name => "Name",
        :locatable_id => 1,
        :locatable_type => "Locatable Type"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Locatable Type".to_s, :count => 2
  end
end
