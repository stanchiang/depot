require 'faker'

FactoryGirl.define do
	factory :product do
		title { Faker::Name.first_name }
		description { Faker::Lorem.paragraph}
		image_url {'ruby.jpg'}
		price {19.99}
	end
end
