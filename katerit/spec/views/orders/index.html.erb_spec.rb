require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :user_id => 1,
        :event_address => "Event Address"
      ),
      stub_model(Order,
        :user_id => 1,
        :event_address => "Event Address"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Event Address".to_s, :count => 2
  end
end
