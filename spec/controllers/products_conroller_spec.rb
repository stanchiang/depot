require 'spec_helper'

describe ProductsController do
	it "test root path" do
		expect(get: "/").to route_to("store#index")
	end
end
