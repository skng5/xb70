# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :resource do
  it "has a good admin factory" do
    expect(FactoryBot.build(:admin)).to be_valid
  end

  describe "#to_s" do
    it "returns the email" do
      expect(User.new(email: "test@example.com").to_s).to eq "test@example.com"
    end
  end
end
