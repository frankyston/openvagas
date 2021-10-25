FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    url { Faker::Internet.url }
    user

    trait :with_logo do
      after :build do |company|
        file = File.open(Rails.root.join('spec/fixtures/images/logo-tech.jpeg'))
        company.logo.attach(
          io: Rack::Test::UploadedFile.new(file, 'image/jpeg', true, original_filename: 'test.jpeg'),
          filename: 'logo-tech.jpeg',
          content_type: 'image/jpeg'
        )
      end
    end
  end
end
