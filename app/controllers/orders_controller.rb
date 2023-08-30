class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products.includes(:product)
  end

  private

  def order_params
    params.require(:trip).permit(:quantity, :order, :address)
  end
end
