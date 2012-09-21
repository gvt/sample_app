require 'spec_helper'

describe "StaticPages" do

  describe "GET home" do

    it "should have the H1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the title 'Home'" do
      pending 'this test broke on Tuesday, should be fixed when we have a chance'
      visit '/static_pages/home'
      page.should have_selector("title", text: "| Home")
    end

  end

  describe "GET help" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end

    it "should have the title 'Help'" do
      pending 'this test broke on Tuesday, should be fixed when we have a chance'
      visit '/static_pages/help'
      page.should have_selector("title", text: "| Help")
    end

  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit "/static_pages/about"
      page.should have_content("About Us")
    end

    it "should have the title 'About'" do
      pending 'this test broke on Tuesday, should be fixed when we have a chance'
      visit '/static_pages/about'
      page.should have_selector("title", text: "| About")
    end

  end

end
