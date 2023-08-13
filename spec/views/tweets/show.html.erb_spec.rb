require 'rails_helper'

RSpec.describe "tweets/show", type: :view do
  before(:each) do
    assign(:tweet, Tweet.create!(
      user: nil,
      body: "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Body/)
  end
end
