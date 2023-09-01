class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])

    @order_products = @order.order_products.includes(:product)
    @farm = @order.trip.farm
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      params["order"]["order_products"].each_value do |order_product|
          new_order_product = OrderProduct.new(quantity: order_product["quantity"], product_id: order_product["product_id"])
          new_order_product.cost = (new_order_product.product.price*new_order_product.quantity)
          new_order_product.order = @order
          # new_order_product.product_id = hash["product_id"]
          # new_order_product.quantity = hash["quantity"]
          # new_order_product.trip_id = @order.trip_id
          new_order_product.save
          end
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
