FactoryBot.define do
  factory :contest do
    sequence(:name) { |n| "Contest #{n}" }
  end
end
