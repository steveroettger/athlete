require 'spec_helper'

describe "Pages" do
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "student athlete"
    page.should have_selector 'title', text: full_title('Welcome')
    click_link "Home"
    page.should have_selector 'title', text: full_title('Welcome')
    click_link "About"
    page.should have_selector 'title', text: full_title('About')
    click_link "FAQ"
    page.should have_selector 'title', text: full_title("FAQ's")
    click_link "Terms"
    page.should have_selector 'title', text: full_title('Terms')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
  end
  
  describe "Home page" do
    before { visit root_path }
    let(:heading)  { 'Student Athlete' }
    let(:page_title) { 'Welcome' }
    it_should_behave_like "all static pages"
    it { should have_selector('title', text: full_title('Welcome')) }
  end
  
  describe "About page" do
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { 'About' }
    it_should_behave_like "all static pages"
    it { should have_selector('title', text: full_title('About')) }
  end
  
  describe "FAQ page" do
    before { visit faq_path }
    let(:heading) { "FAQ's" }
    let(:page_title) { "FAQ's" }
    it_should_behave_like "all static pages"
    it { should have_selector('title', text: full_title("FAQ's")) }
  end
  
  describe "Terms page" do
    before { visit terms_path }
    let(:heading) { 'Terms & Conditions'}
    let(:page_title) { 'Terms' }
    it_should_behave_like "all static pages"
    it { should have_selector('title', text: full_title('Terms')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
    it_should_behave_like "all static pages"
    it { should have_selector('title', text: full_title('Contact')) }
  end
end
