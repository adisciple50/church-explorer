class AuthenticationController < ApplicationController
  before_action :set_user, only: [:login]

  def index
  end

  def login
    if @user.nil?
      UserMailer.with(user:@user).deliver_now
    end
  end

  # def wedding_login
  #   redirect_to controller: :wedding,action: :index
  # end

  private

  def set_user
    @user = User.find_by params[:email]
  end
end
