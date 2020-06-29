class Order < ApplicationRecord
  has_many :orders_products, dependent: :destroy
  has_many :products, through: :orders_products

  class << self

    # create order and order's product
    def create_order(product_id, user_id)
  		order = find_or_create_by(user_id: user_id)
    	order.orders_products.create(product_id: product_id)
    end

    # check if order has any products
    def is_placed_order?(user_id, product_id)
    	get_order_products(user_id, product_id).any? ? true : false
    end

    # cancel the order
    def delete_order(user_id, product_id)
    	get_order_products(user_id, product_id).destroy_all
    end

    # after 24 hours cancel the ordered products automatically
    def auto_cancel_order
      orders = self.where('created_at > ?', 24.hours.ago)
    	if orders.any?
        orders.map{ |o| o.orders_products.delete_all }
      end
    end

    private

    # Get the order and their products
    def get_order_products(user_id, product_id)
      order = find_by(user_id: user_id)
      order.orders_products.where(product_id: product_id)
    end
  end

end

