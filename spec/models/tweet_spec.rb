require 'rails_helper'

RSpec.describe Tweet, type: :model do
  #it { expect(User.new(email: { "email@mail.com" })).authorize!).to eql(true) }
  let(:user) { create(:user)  }
  it { should belong_to :user}
  it { should validate_presence_of(:body)}
  it { should validate_length_of(:body).is_at_most(280)}
end
