require 'rails_helper'

RSpec.describe "galleries/edit", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :title => "MyString",
      :body => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do

      assert_select "input#gallery_title[name=?]", "gallery[title]"

      assert_select "textarea#gallery_body[name=?]", "gallery[body]"

      assert_select "input#gallery_slug[name=?]", "gallery[slug]"
    end
  end
end
