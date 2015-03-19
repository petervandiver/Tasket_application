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

# def reminder_email(user)
#     @taskets = user.taskets
#     @tasks = user.tasks
#     @user = user
#         if remind_day = user.task.remind_day && remind_time = user.task.remind_time
#             mail(to: @user.email, subject: 'Task Reminder')
# end
#     end




end