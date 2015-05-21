require 'rails_helper'

RSpec.describe "stories/new", type: :view do
  before(:each) do
    assign(:story, Story.new(
      :name => "MyString",
      :description => "MyText",
      :topic_id => 1
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input#story_name[name=?]", "story[name]"

      assert_select "textarea#story_description[name=?]", "story[description]"

      assert_select "input#story_topic_id[name=?]", "story[topic_id]"
    end
  end
end
