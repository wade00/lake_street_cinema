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
    # Placeholder values since the following aren't sent with form when order first created
    @order.email = "placeholder@example.com"
    @order.credit_card = "0000000000000000"
    @order.card_expiration_month = "00"
    @order.card_expiration_year = "0000"
    @order.street_address = "0"
    @order.city = "city"
    @order.state = "state"
    @order.zip_code = "00000"
    @order.country = "country"

    if @order.save
      redirect_to edit_order_path(@order)
    else
      render 'new', errors: @order.errors
    end
  end

  def show
  end

  def edit
    # Remove all placeholder values so they don't populate in form
    @order.email = ""
    @order.credit_card = ""
    @order.card_expiration_month = ""
    @order.card_expiration_year = ""
    @order.street_address = ""
    @order.city = ""
    @order.state = ""
    @order.zip_code = ""
    @order.country = ""
  end

  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Your purchase was successful.'
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to movies_path, notice: 'Your order has been cancelled'
  end

  private
    def set_order_and_movie
      @order = Order.find(params[:id])
      @movie = Movie.find(@order.movie_id)
    end

    def order_params
      params.require(:order).permit(:email, :credit_card, :card_expiration_month, :card_expiration_year,
                                    :tickets, :street_address, :city, :state, :zip_code, :country,
                                    :theater_id, :showtime_id, :movie_id)
    end
end
