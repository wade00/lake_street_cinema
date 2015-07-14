class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render 'new', errors: @order.errors
    end
  end

  def show
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:email, :credit_card, :theater_id, :showtime_id)
    end
end
