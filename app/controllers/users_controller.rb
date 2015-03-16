class UsersController < ApplicationController
  

  def show
  		@user = current_user
  end

def index
  		@user = current_user
  		@taskets = current_user.taskets
  		@tasks = current_user.tasks

  end

end
