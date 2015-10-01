require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :name => "MyString",
      :locatable_id => 1,
      :locatable_type => "MyString"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_locatable_id[name=?]", "location[locatable_id]"

      assert_select "input#location_locatable_type[name=?]", "location[locatable_type]"
    end
  end
end
