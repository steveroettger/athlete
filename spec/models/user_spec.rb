require 'spec_helper'

describe User do
  
  before { @user = User.new(name: "Example User", 
                            school_year: "Junior", 
                            location: "Fallston, MD",
                            high_school: "Fallston High School", 
                            goal: "To be awesome", 
                            fb_link: "http://facebook.com", 
                            flickr_link: "http://flickr.com",
                            youtube_link: "http://youtube.com"
                            ) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:school_year) }
  it { should respond_to(:location) }
  it { should respond_to(:high_school) }
  it { should respond_to(:goal) }
  it { should respond_to(:fb_link) }
  it { should respond_to(:flickr_link) }
  it { should respond_to(:youtube_link) }
  
  describe "when goal statement is too long" do
    before { @user.goal = "a" * 151 }
    it { should_not be_valid }
  end
  
end


