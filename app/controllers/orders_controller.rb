class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

  def new
    @order = Order.new
    @deal = Deal.find_by(params[:id])
  end

  def edit
  end

  def show
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new
    @order.save(order_params)
    redirect_to current_user
  end

  def update
  end

  def destroy
  end

  private

  def order_params
    params.require(:order)
  end


end
