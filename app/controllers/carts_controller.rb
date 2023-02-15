class CartsController < ApplicationController

  def show
    @cart = @current_cart
  end

  def destroy
    @cart_product = CartProduct.find(params[:id])
    @cart_product.destroy
    redirect_to cart_path
  end

  def add_quantity
    @cart_product = CartProduct.find(params[:id])
    @cart_product.quantity += 1
    @cart_product.save
    redirect_to cart_path
  end

  def reduce_quantity
    @cart_product = CartProduct.find(params[:id])
    @cart_product.quantity -= 1 if @cart_product.quantity > 1
    @cart_product.save
    redirect_to cart_path
  end

  def cart_product_params
    params.require(:cart_product).permit(:cart_id,:product_id,:quantity)
  end
end