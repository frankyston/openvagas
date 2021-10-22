FactoryBot.define do
  factory :company do
    name { 'Empresa Legal' }
    url { 'https://empresalegal.com' }
    user

    trait :with_logo do
      after :build do |company|
        file = File.open(Rails.root.join('spec/fixtures/images/logo-tech.jpeg'))
        company.logo.attach(
          io: Rack::Test::UploadedFile.new(file, 'image/jpeg', true, original_filename: 'test.jpg'),
          filename: 'logo-tech.jpeg',
          content_type: 'image/jpeg'
        )
      end
    end
  end
end
