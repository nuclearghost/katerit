require 'spec_helper'

describe "dishes/index" do
  before(:each) do
    assign(:dishes, [
      stub_model(Dish,
        :name => "Name",
        :serves => 1,
        :price => "9.99",
        :restaurant => "",
        :category => ""
      ),
      stub_model(Dish,
        :name => "Name",
        :serves => 1,
        :price => "9.99",
        :restaurant => "",
        :category => ""
      )
    ])
  end

  it "renders a list of dishes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
