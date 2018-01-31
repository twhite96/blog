require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user)            { create(:user) }
  let(:second_user)     { create(:user) }
  let(:post)            { create(:post,user_id:user.id) }
  
  it { is_expected.to have_many(:posts) }

  describe "validations" do
    it "gets a username after create" do
      expect(user.username).not_to eq(nil)
    end
  end
end