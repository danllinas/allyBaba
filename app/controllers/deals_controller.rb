class DealsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

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
    @deal = Deal.find(params[:id])
  end

  def create
    @deal = current_user.deals.build(deal_params)
    if @deal.save
      @deal.deal_expiration = 30.days.from_now
      flash[:success] = "You've created a new deal!"
      redirect to @current_user
    else
      render 'new'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted."
    redirect_to request.referrer || root_url
  end


  private

  def deal_params
    params.require(:deal).permit(:url, :title, :retail_price_cents, :wholesale_price_cents, :image, :delivery_method, :minimum_bids, :estimated_delivery)
  end

  def correct_user
    @deal = current_user.deals.find_by(id: params[:id])
    redirect_to root_url if @micropost.nil?
  end


end
