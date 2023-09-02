class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])

    @order_products = @order.order_products.includes(:product)
    @farm = @order.trip.farm

    @driver = @order.trip.user
    @markers =
      [{
        lat: @driver.latitude,
        lng: @driver.longitude
      }]
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user#
    if @order.save
      params["order"]["order_products"].each_value do |order_product|
        if order_product["quantity"].to_i.positive?
          new_order_product = OrderProduct.new(quantity: order_product["quantity"], product_id: order_product["product_id"])
          new_order_product.cost = (new_order_product.product.price*new_order_product.quantity)
          new_order_product.order = @order
          farm_product = Product.find(new_order_product.product_id)
          farm_product.stock -= order_product["quantity"].to_i
          farm_product.save
          new_order_product.save
        end
      end
      redirect_to order_path(@order)
    else
      # redirect_to farm_path(params["farm"])
      @farm = Farm.find(params["farm"])
      @products = @farm.products
      @order =
      render "farms/show", status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:trip_id)
  end
end
