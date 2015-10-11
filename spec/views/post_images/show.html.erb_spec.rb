require 'rails_helper'

RSpec.describe "post_images/show", type: :view do
  before(:each) do
    @post_image = assign(:post_image, PostImage.create!(
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/File/)
  end
end
