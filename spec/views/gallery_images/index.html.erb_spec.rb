require 'rails_helper'

RSpec.describe "gallery_images/index", type: :view do
  before(:each) do
    assign(:gallery_images, [
      GalleryImage.create!(
        :file => "File"
      ),
      GalleryImage.create!(
        :file => "File"
      )
    ])
  end

  it "renders a list of gallery_images" do
    render
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
