FactoryBot.define do
  factory :enrollment do
    putter
    contest
    active { true }
  end
end
