require 'spec_helper'

describe StoreController do
  describe "GET 'index'" do
		it "populates an array of products" do
			product = create(:product)
			get :index
			expect(assigns(:products)).to match_array [product]
		end
    it "returns http success" do
      get :index
      response.should be_success
    end
  end
end
