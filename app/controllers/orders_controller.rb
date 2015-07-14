class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to edit_order_path(@order)
    else
      render 'new', errors: @order.errors
    end
  end

  def show
  end

  def edit
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:email, :credit_card, :tickets, :theater_id, :showtime_id)
    end
end
