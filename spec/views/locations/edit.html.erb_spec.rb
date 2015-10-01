require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "MyString",
      :locatable_id => 1,
      :locatable_type => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_locatable_id[name=?]", "location[locatable_id]"

      assert_select "input#location_locatable_type[name=?]", "location[locatable_type]"
    end
  end
end
