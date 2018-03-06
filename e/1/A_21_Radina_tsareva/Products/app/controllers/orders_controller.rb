class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show

  end

  def create
   # @orders = Orders.new
   # @orders.save
    render :create
  end

  def created
    render :created
  end


end
