require 'spec_helper'

describe "dishes/edit" do
  before(:each) do
    @dish = assign(:dish, stub_model(Dish,
      :name => "MyString",
      :serves => 1,
      :price => "9.99",
      :restaurant => "",
      :category => ""
    ))
  end

  it "renders the edit dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path(@dish), :method => "post" do
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "input#dish_serves", :name => "dish[serves]"
      assert_select "input#dish_price", :name => "dish[price]"
      assert_select "input#dish_restaurant", :name => "dish[restaurant]"
      assert_select "input#dish_category", :name => "dish[category]"
    end
  end
end
