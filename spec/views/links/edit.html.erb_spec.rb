require 'rails_helper'

RSpec.describe "links/edit", :type => :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :title => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input#link_title[name=?]", "link[title]"

      assert_select "input#link_url[name=?]", "link[url]"
    end
  end
end
