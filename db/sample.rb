products = [
	{ name: 'Sumsung', price: 168, quantity: 5, color: 'Red' },
	{ name: 'Sony', price: 389, quantity: 6, color: 'White' },
	{ name: 'Moto', price: 320, quantity: 8, color: 'Black' },
	{ name: 'Redmi', price: 230, quantity: 3, color: 'Blue' },
	{ name: 'Nokia', price: 334.87, quantity: 2, color: 'Brown' },
	{ name: 'Honor', price: 267.20, quantity: 4, color: 'Pink' },
	{ name: 'LG', price: 193.45, quantity: 6, color: 'White' },
	{ name: 'Jabra', price: 560, quantity: 7, color: 'Black' },
	{ name: 'Sharp', price: 376, quantity: 2, color: 'Red' },
	{ name: 'Fantastick', price: 213, quantity: 9, color: 'Silver' }
]

Product.create(products) unless Product.any?