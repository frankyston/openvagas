FactoryBot.define do
  factory :user do
    email { 'user@user.com' }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
