require 'spec_helper'

describe "StaticPages" do

  describe "GET home" do

    it "should have the content SampleApp in title" do
      visit '/static_pages/home'
      page.should have_css("title", text: "SampleApp")
    end

  end

  describe "GET help" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit "/static_pages/about"
      page.should have_content("About Us")
    end

  end

end
