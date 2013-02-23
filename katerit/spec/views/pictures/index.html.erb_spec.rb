require 'spec_helper'

describe "pictures/index" do
  before(:each) do
    assign(:pictures, [
      stub_model(Picture,
        :url => "Url",
        :restaurant_id => 1,
        :dish_id => 2
      ),
      stub_model(Picture,
        :url => "Url",
        :restaurant_id => 1,
        :dish_id => 2
      )
    ])
  end

  it "renders a list of pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
