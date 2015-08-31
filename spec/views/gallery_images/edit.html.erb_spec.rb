require 'rails_helper'

RSpec.describe "gallery_images/edit", type: :view do
  before(:each) do
    @gallery_image = assign(:gallery_image, GalleryImage.create!(
      :file => "MyString"
    ))
  end

  it "renders the edit gallery_image form" do
    render

    assert_select "form[action=?][method=?]", gallery_image_path(@gallery_image), "post" do

      assert_select "input#gallery_image_file[name=?]", "gallery_image[file]"
    end
  end
end
