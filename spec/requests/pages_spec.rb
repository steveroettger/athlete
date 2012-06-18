require 'spec_helper'

describe "Pages" do
  
  describe "Home page" do
    it "should have the h1 'Student Athlete'" do
      visit '/pages/home'
      page.should have_selector('h1', :text => 'Student Athlete')
    end
    
    it "should have the title 'Welcome'" do
      visit '/pages/home'
      page.should have_selector('title', :text => 'Athlete | Welcome')
    end
  end
  
  describe "About page" do
    it "should have the h1 'About'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have the title 'About'" do
      visit '/pages/about'
      page.should have_selector('title', :text => 'Athlete | About')
    end
  end
  
  describe "Contact" do
    it "should have the h1 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('title', :text => 'Contact')
    end
  end
end
