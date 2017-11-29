# frozen_string_literal: true
FactoryBot.define do
  factory :user do
    sequence(:email) { |_n| "email-#{srand}@example.com" }
    password 'a password'
    password_confirmation 'a password'
  end
  factory :admin, parent: :user do
    email "admin@example.com"
  end
end
