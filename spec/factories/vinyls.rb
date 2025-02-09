FactoryBot.define do
  factory :vinyl do
    user { nil }
    artist { nil }
    genre { nil }
    title { "MyString" }
    catalog_no { "MyString" }
    label { "MyString" }
    country { "MyString" }
    year { "MyString" }
    notes { "MyString" }
    comment { "MyString" }
  end
end
