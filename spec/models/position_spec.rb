require 'rails_helper'

RSpec.describe Position, type: :model do
  let!(:user) { create(:user) }
  let!(:company) { create(:company, :with_logo, user: user) }
  it "is valid with valid attributes" do
    position = build(:position, company: company)

    expect(position).to be_valid
  end

  it "is not valid without attributes" do
    position = build(:position, name: nil)
    expect(position).to_not be_valid
  end
end
