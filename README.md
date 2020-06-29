Documentation

Rails version: 6.0.3.2  
Ruby version:  2.6.5  

* Configuration  
	run bundle install  
	run bundle exec rake webpacker:install  

* Database setup  
	Add the username and password in config/database.yml  
	run rake db:create  
	run rake db:migrate  

	Add the sample data of products using following command  
	run rake db:sample_data  

* Functionality  
	For placing the order need to sign up.  
	Click on the place the order, it will create the order by adding product detail.  
	Place the order will replace to the cancel button.  
	Cancel button will cancel the order.  

* Service  
	Added Whenever gem for scheduling the cron job.  
	Cron job will run in every one hour to cancel the order automatically.  

* Test the code  
	run rspec spec  
