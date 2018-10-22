class ApplicationController < ActionController::Base
  before_action :set_cart

  private

  def set_cart
    session[:cart] ||= []
    @cart = session[:cart]
  end
end
