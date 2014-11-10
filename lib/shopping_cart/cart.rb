module ShoppingCart
  class Cart
    def initialize(products, customer, shopping_day = Date.today)
      @products = products || []
      @customer = customer
      @shopping_day = shopping_day
    end

    def add_product(product)
      @products.push(product)
    end

    def count
      @products.length
    end

    def total
      @total ||= @products.inject(0) do |sum, product|
        sum += product.price - product.discount(@shopping_day)
      end
      return @total if !@customer.loyal? || @products.length < 5
      @total - @total * 0.1
    end
  end
end
