FactoryBot.define do
  factory :article do
    description { "test123" }
    content_attributes { { title: "Sprints" } }
  end
end
