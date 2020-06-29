FactoryBot.define do
  
  factory :user do
    email { "test@gmail.com" }
    password { "123456" }
  end

end

FactoryBot.define do
  
  factory :product do
    name { 'Mango' }
    price { 20 }
    quantity { 50 }
    availability { true }
    color { 'Yellow' }
  end

end

FactoryBot.define do
  
  factory :order do
    user
  end

end

FactoryBot.define do
  
  factory :orders_product do
    order
    product
  end

end