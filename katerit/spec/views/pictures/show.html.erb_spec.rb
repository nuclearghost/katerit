require 'spec_helper'

describe "pictures/show" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :url => "Url",
      :restaurant_id => 1,
      :dish_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
