class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :update, :new, :edit]

  def new
    @order = Order.new
  end

  def edit
  end

  def show
  end

  def index
    @orders = Order.all
  end

  def create
    @order.save(order_params)
  end

  def update
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(:shipping_address1, :shipping_address2, :city, :state, :cc_info, :zipcode)
  end


end
