require 'spec_helper'

module ShoppingCart
  describe Customer do
  	let(:customer) do
		Customer.new(loyalty)
	end

    describe 'loyal?' do
    	context "is loyal customer" do
    		let(:loyalty) do
    			true
    		end

    		it "returns true" do
    			expect(customer.loyal?).to eq(true)
    		end
    	end

    	context "is not loyal customer" do
    		let(:loyalty) do
    			false
    		end
    		
    		it "returns false" do
    			expect(customer.loyal?).to eq(false)
    		end
    	end
    end
  end
end
