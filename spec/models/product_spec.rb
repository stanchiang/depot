require 'spec_helper'

describe Product do
	it "is valid with a title, description, image_url, and price" do
		expect(build(:product)).to be_valid
	end
	
	it "doesn't run without a title" do
		expect(build(:product, title: nil)).to have(1).errors_on(:title) 
	end
	
	it "doesn't run without a description" do
		expect(build(:product, description: nil)).to have(1).errors_on(:description) 
	end

	it "doesn't run without a image_url" do
		expect(build(:product, image_url: nil)).to have(1).errors_on(:image_url) 
	end

	it "doesn't run with a price at $0.00" do
		expect(build(:product, price: 0)).to have(1).errors_on(:price) 
	end
	
	it "doesn't run with a price under $0.00" do
		expect(build(:product, price: -1)).to have(1).errors_on(:price) 
	end

# might want to test for images other than gif|jpg|png, allow_blank: true doesn't work
end
