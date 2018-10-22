# frozen_string_literal: true

class CartController < ApplicationController
  def index
    @items = Product.find(@cart)
  end

  def add_item
    @cart << params[:id] if Product.exists? params[:id]

    redirect_to cart_path
  end

  def remove_item
    @cart.delete params[:id]

    redirect_to cart_path
  end
end
