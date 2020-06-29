#Add cron log
set :output, "log/cron.log"

#set enviornment
set :environment, "development"

#Cron job for cancel order automatically
every 1.hour do 
	runner "Order.auto_cancel_order"
end
