class ProductsController < ApplicationController

	def index
		@products = Product.all.order("id desc")
	end

end
