class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

  def new
    @order = Order.new
    @deal = Deal.find(params[:deal_id])
    @user = current_user
  end

  def edit
  end

  def show
  end

  def index
    @orders = Order.all
  end

  def create
    @deal = Deal.find(params[:deal_id])
    @order = Order.new(stripe_params)
    @order.process_payment
    @order.deal_id = @deal.id
    @order.user_id = current_user.id
    redirect_to current_user if @order.save
  end

  def update
  end

  def destroy
  end

  private
  def stripe_params
    params.permit :stripeEmail, :stripeToken
  end

end
