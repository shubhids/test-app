module ProductsHelper

	def add_currency(price)
		'$' + price.to_s
	end

	def is_order_placed?(product_id)
		Order.is_placed_order?(current_user.id, product_id)
	end
end
