module ShoppingCart
  class Houseware < Product
    def discount(shopping_day)
    	if price > 100
    		return price * 0.05
    	end
    	0
    end
  end
end
