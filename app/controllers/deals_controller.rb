class DealsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

  def index
    @response = Deal.scrape
    @deals = Deal.all
  end

  def new
    @deal = Deal.new
    @deal.orders.build
  end

  def edit
    correct_user
  end

  def update
    correct_user
    if @deal.update(deal_params)
      flash[:success] = "Deal successfully updated."
      redirect_to @current_user
    else
      render 'edit'
    end
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def create
    @deal = current_user.deals.new(deal_params)
    @deal.deal_expiration = 30.days.from_now
    @deal.wholesale_price = @deal.wholesale_price_cents
    @deal.retail_price = @deal.retail_price_cents
    @deal.total_bids = 1
    if @deal.save
      flash[:success] = "You've created a new deal!"
      @order = Order.new
      @order.user_id = current_user.id
      @order.deal_id = @deal.id
      @order.save
      redirect_to @current_user
    else
      render 'new'
    end
  end

  def destroy
    @deal = current_user.deals.find_by(id: params[:id])
    # if @current_user.id != @deal.user_id
    #   flash[:danger] = "You are not authorized."
    #   redirect_to root_url
    # end
    @deal.destroy
    flash[:success] = "Deal deleted."
    redirect_to @current_user || root_url
  end


  private

  def set_deal
    @deal = Deal.find(params[:id])
  end

  def deal_params
    params.require(:deal).permit(:url, :title, :retail_price_cents, :wholesale_price_cents, :image, :delivery_method, :minimum_bids, :estimated_delivery, :shipping_address1, :shipping_address2, :city, :state, :cc_info, :zipcode)
  end

  def correct_user
    @deal = current_user.deals.find_by(id: params[:id])
    redirect_to root_url if @deal.nil?
  end

end
