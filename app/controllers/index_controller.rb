class IndexController < ApplicationController
  def index
    @products = params[:category] ? Product.where(product_category_id: params[:category]).all : Product.all
    @categories = ProductCategory.all
  end
end
