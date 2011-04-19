require 'spec_helper'

describe "cards/index.html.erb" do
  before(:each) do
    assign(:cards, [
      stub_model(Card,
        :title => "Title",
        :description => "MyText",
        :completed => false
      ),
      stub_model(Card,
        :title => "Title",
        :description => "MyText",
        :completed => false
      )
    ])
  end

  it "renders a list of cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
