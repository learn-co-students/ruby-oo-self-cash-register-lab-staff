class CashRegister

	attr_accessor :discount, :total

	def initialize(discount=0)
		@total = 0 
		@discount = discount
		@items = []
	end

	def add_item(item, price, quantity=1)
		@total += (price * quantity)
		@last_price = (price * quantity)
		while quantity > 0 
			@items << item
			quantity -= 1 
		end

	end

	def apply_discount
		if @discount == 0 
			return "There is no discount to apply."
		else
			@total = (@total - (@total * discount/100)).to_f.round(0)
			return "After the discount, the total comes to $#{@total.to_s}."
		end
	end

	def items
		return @items
	end

	def void_last_transaction
		@total = @total -  @last_price
	end
end
