class StaticController < ApplicationController

  def home
    @user = User.new
  end

  def about
  end

  def work
  end
end
