class OrdersController < ApplicationController
  before_action :set_order_and_movie, only: [:show, :edit, :update, :destroy]

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

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Your purchase was successful.'
      OrderMailer.send_receipt(@order, @order.email).deliver_now
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to movies_path, notice: 'Your order has been cancelled'
  end

  def review
    @movie = Movie.find(params[:id])
  end

  private
    def set_order_and_movie
      @order = Order.find(params[:id])
      @movie = Movie.find(@order.movie_id)
    end

    def order_params
      params.require(:order).permit(:email, :name, :credit_card, :card_expiration_month, :card_expiration_year,
                                    :tickets, :street_address, :city, :state, :zip_code, :country,
                                    :theater_id, :showtime_id, :movie_id)
    end
end
