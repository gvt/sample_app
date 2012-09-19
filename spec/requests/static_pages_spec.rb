require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      visit '/static_pages/home'
      page.should have_css("title", text: "SampleApp")
    end
  end
end
