class DealsController < ApplicationController
  def index
    @response = Deal.scrape
  end

  def new
  end

  def edit
  end

  def show
  end
end
