require 'spec_helper'

describe "cards/edit.html.erb" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :title => "MyString",
      :description => "MyText",
      :completed => false
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cards_path(@card), :method => "post" do
      assert_select "input#card_title", :name => "card[title]"
      assert_select "textarea#card_description", :name => "card[description]"
      assert_select "input#card_completed", :name => "card[completed]"
    end
  end
end
