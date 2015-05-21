require 'rails_helper'

RSpec.describe "stories/index", type: :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        :name => "Name",
        :description => "MyText",
        :topic_id => 1
      ),
      Story.create!(
        :name => "Name",
        :description => "MyText",
        :topic_id => 1
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
