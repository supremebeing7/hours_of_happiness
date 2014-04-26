require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }

  describe "full_size_pic" do
    it "takes a photo url from Google+ and slices off the end to make it full-sized" do
      user = FactoryGirl.create :user
      user.full_size_pic.should eq "https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg"
    end
  end
end
