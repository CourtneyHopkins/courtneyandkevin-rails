require 'rails_helper'

RSpec.describe "gallery_images/new", type: :view do
  before(:each) do
    assign(:gallery_image, GalleryImage.new(
      :file => "MyString"
    ))
  end

  it "renders new gallery_image form" do
    render

    assert_select "form[action=?][method=?]", gallery_images_path, "post" do

      assert_select "input#gallery_image_file[name=?]", "gallery_image[file]"
    end
  end
end
