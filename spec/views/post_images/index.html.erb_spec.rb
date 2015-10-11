require 'rails_helper'

RSpec.describe "post_images/index", type: :view do
  before(:each) do
    assign(:post_images, [
      PostImage.create!(
        :file => "File"
      ),
      PostImage.create!(
        :file => "File"
      )
    ])
  end

  it "renders a list of post_images" do
    render
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
