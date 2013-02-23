require 'spec_helper'

describe "pictures/new" do
  before(:each) do
    assign(:picture, stub_model(Picture,
      :url => "MyString",
      :restaurant_id => 1,
      :dish_id => 1
    ).as_new_record)
  end

  it "renders new picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pictures_path, :method => "post" do
      assert_select "input#picture_url", :name => "picture[url]"
      assert_select "input#picture_restaurant_id", :name => "picture[restaurant_id]"
      assert_select "input#picture_dish_id", :name => "picture[dish_id]"
    end
  end
end
