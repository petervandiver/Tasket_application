# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/Users/petervandiver/Desktop/programs/Tasket_application/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever


# Load application
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")



# Mailing schedule
	# every 1.minute do
	# 	rake 'send_daily_email', environment: 'development'	
	# end

	# every :reboot do
	# 	rake 'send_daily_email', environment: 'development'
	# end

	# every 2.minutes do
	# 	runner 'TasketsController.daily_email', environment: 'development'
	# end

	# every :reboot do
	# 	runner 'TasketsController.daily_email', environment: 'development'
	# end
	

	every 2.minutes do
		runner "User.all.each {|user| TasketMailer.daily_email(user).deliver_now! }", environment: 'development'
	end

	every :reboot do
		runner "User.all.each {|user| TasketMailer.daily_email(user).deliver_now! }", environment: 'development'
	end



