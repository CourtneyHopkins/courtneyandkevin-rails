require 'rails_helper'

RSpec.describe "galleries/show", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :title => "Title",
      :body => "MyText",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
  end
end
