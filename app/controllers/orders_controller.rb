class OrdersController < ApplicationController

	def create
		if current_user
			@order = Order.create_order(params[:product_id], current_user.id)
				respond_to do |format|
					format.js
				end
		else
			redirect_to new_user_session_path
		end
	end

	def delete_order
		@order = Order.delete_order(current_user.id, params[:product_id])
		respond_to do |format|
			format.js
		end
	end
end
