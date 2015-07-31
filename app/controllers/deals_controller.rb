class DealsController < ApplicationController
  before_action :set_deal, only: [:show, :edit, :update, :destroy]

  def index
    @response = Deal.scrape
    @deals = Deal.all
  end

  def new
    @deal = Deal.new
  end

  def edit
  end

  def show
  end

  def create
    if @current_user
      @deal = Deal.new(deal_params)
    else
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
    if @deal.save
      flash[:success] = "You've created a new deal!"
      redirect to @current_user
    else
      render 'new'
    end
  end


  private

  def deal_params
    params.require(:deal).permit(:url, :expired, :min_order, :title, :image, :retail_price, :wholesale_price)
  end

  def set_deal
    @deal = Deal.find(params[:id])
  end

end
