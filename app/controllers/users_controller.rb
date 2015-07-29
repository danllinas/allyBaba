class UsersController < ApplicationController
  def show
    @response = User.scrape
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end
end
