require "rails_helper"

RSpec.describe Post, :type => :model do

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_least(5) }
  it { is_expected.to belongs_to(:user) }
  
  context "has a title" do
    it "should be greater than 5 characters" do
      post = Post.create!
      title1 = post.title.create!(:title => "Title")
      title2 = post.title.create!(:title => "Four")
      expect(post.reload.title).to eq([title1, title2])
    end
  end
end
