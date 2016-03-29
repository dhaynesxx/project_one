# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  admin           :boolean          default(FALSE)
#  master          :boolean          default(FALSE)
#  name            :text
#  phone           :text
#  birthday        :date
#  reward_level    :integer
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersController < ApplicationController
  before_action :authorise, :only => [:index]

def new
  @user = User.new
end

def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
end

def index
    @users = User.all
end

def show
    @user = User.find params[:id]
end

def edit
  @user = @current_user
end

def update
  user = @current_user
  user.update user_params
  redirect_to root_path
end


private
def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :image, :business_id)
end

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.admin?)
end

end
