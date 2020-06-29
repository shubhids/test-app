require 'rails_helper'

RSpec.describe Order, :type => :model do

	before do
    @user = create(:user)
    @product = create(:product)
  end
  let(:order) {Order.create(user_id: @user.id) }
  
  it "place the order" do
  	order.orders_products.create(product_id: @product.id)
  	expect(order.orders_products.count).not_to eq(0)
  end

  it "is order placed" do
  	order.orders_products.create(product_id: @product.id)
  	expect(order.orders_products.any?).to eq(true)
  end

  it "cancel placed order" do
  	order.orders_products.create(product_id: @product.id)
  	order.orders_products.delete_all
  	expect(order.orders_products.count).to eq(0)
  end

  describe "after 24 hour order cancelled" do
  	@orders = Order.where('created_at > ?', 24.hours.ago)
	  @orders.each do |order|
	  	it "auto cancel order" do 
	  		order.orders_products.delete_all
	  		expect(order.orders_products.count).to eq(0)
	  	end
	  end
	end
end