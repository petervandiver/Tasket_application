class MaillineWorker
	include	Sidekiq::Worker

	def perform
		#create list of mailings to go out per user. Running this every minute, compiling a new list.
	end
end
