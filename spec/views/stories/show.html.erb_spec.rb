require 'rails_helper'

RSpec.describe "stories/show", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :name => "Name",
      :description => "MyText",
      :topic_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
