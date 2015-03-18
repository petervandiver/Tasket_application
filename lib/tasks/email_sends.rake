desc 'send daily_email'


	task send_daily_email: :environment do
  	# ... set options if any

  	User.all.each do |user|
  	TasketMailer.daily_email(user).deliver_now!, environment: 'development'
	end
end
