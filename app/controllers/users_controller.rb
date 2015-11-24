class UsersController < ApplicationController

  def users
    @users = User.all

    render 'index'
  end

def user_page

end

end
