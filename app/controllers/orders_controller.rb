class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
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
      order_co2_saved = 0
      params["order"]["order_products"].each_value do |order_product_hash|
        if order_product_hash["quantity"].to_i.positive?
          new_order_product = OrderProduct.new(quantity: order_product_hash["quantity"], product_id: order_product_hash["product_id"])
          new_order_product.cost = (new_order_product.product.price*new_order_product.quantity)
          new_order_product.order = @order
          update_farm_stock(new_order_product, order_product_hash)
          new_order_product.save
          order_co2_saved += (new_order_product.quantity * new_order_product.product.co2_saved)
        end
      end
      current_user.total_co2_saved += order_co2_saved
      current_user.save
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

  def update_farm_stock(new_order_product, order_product_hash)
    farm_product = Product.find(new_order_product.product_id)
    farm_product.stock -= order_product_hash["quantity"].to_i
    farm_product.save
  end

  # def order_product_co2(new_order_product)
  #   (new_order_product.quantity * new_order_product.product.co2_saved)
  # end

  def update_user_total_co2(order_product_co2)
    current_user.total_co2_saved += order_product_co2
    current_user.save
  end

  def order_params
    params.require(:order).permit(:trip_id)
  end
end
