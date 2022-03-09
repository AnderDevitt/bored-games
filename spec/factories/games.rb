FactoryBot.define do
  factory :game do
    name { "MyString" }
    condition { 1 }
    min_player { 1 }
    max_player { 1 }
    price { 1.5 }
    description { "MyString" }
    user { nil }
  end
end
