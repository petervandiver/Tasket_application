class TasketMailer < ApplicationMailer
	default from: "tasket.time@gmail.com"

def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'You just made a Tasket!')
  end

def daily_email(user)
    @taskets = user.taskets
    @tasks = user.tasks
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Tasket: Daily Update')
  end

end