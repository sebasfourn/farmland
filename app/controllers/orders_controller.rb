class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products.includes(:product)
    @farm = @order.trip.farm
  end

  private

  def order_params
    params.require(:trip).permit(:quantity, :order, :address, :date)
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to orders_path
    else
      render "farms/show", status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:trip_id)
  end
end
