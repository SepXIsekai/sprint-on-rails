FactoryBot.define do
  factory :user do
    email_address { "admin@example.com" }
    password { "password" }
  end

  factory :logged_in_admin, parent: :user do
    after(:create) do |user|
      # This would require more complex setup
    end
  end
end