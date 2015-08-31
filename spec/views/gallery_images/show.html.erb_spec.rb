require 'rails_helper'

RSpec.describe "gallery_images/show", type: :view do
  before(:each) do
    @gallery_image = assign(:gallery_image, GalleryImage.create!(
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/File/)
  end
end
