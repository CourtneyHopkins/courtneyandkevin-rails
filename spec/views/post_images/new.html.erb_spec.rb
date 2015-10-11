require 'rails_helper'

RSpec.describe "post_images/new", type: :view do
  before(:each) do
    assign(:post_image, PostImage.new(
      :file => "MyString"
    ))
  end

  it "renders new post_image form" do
    render

    assert_select "form[action=?][method=?]", post_images_path, "post" do

      assert_select "input#post_image_file[name=?]", "post_image[file]"
    end
  end
end
