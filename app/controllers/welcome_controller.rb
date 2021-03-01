class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:react]
  before_action :redirect_if_logged_in, only: [:home]
  def home
  end

  def react 
  end

  private 

  def redirect_if_logged_in
    if user_signed_in?
      redirect_to react_path  
    end
  end
end
